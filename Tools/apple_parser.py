import requests
import json

defoltna = ['iOS 13.0', 'macOS 10.15', 'tvOS 13.0', 'watchOS 6.0', 'visionOS 1.0']
newswift = ['iOS 18.0', 'macOS 15.0', 'tvOS 18.0', 'watchOS 11.0', 'visionOS 2.0']


def clean_availability_string(availability):
    for default in defoltna:
        availability = availability.replace(f"{default}, ", "")
    return availability

def isnewswift(availabilities):
    for n in newswift:
        for a in availabilities:
            if n in a:
                return True
    return False

def get_names(entity):
    url = f'https://developer.apple.com/tutorials/data/documentation/swiftui/{entity}.json'
    response = requests.get(url)
    doc = response.json()
    sections = doc['relationshipsSections']
    for sec in sections:
        if sec['title'] == 'Conforming Types':
            conf = sec
            break
    identifiers = conf['identifiers']
    names = [x.split("/")[-1] for x in identifiers]
    return names

with open('parsed.json', 'r') as file:
    structs = json.load(file)
    
preferedTypes = {
    'View' : 'Never',
    'Shape': 'Circle',
    'InsettableShape': 'Circle',
    'Hashable': 'Int',
    'RandomAccessCollection': 'Array<Never>',
    'Publisher': 'AnyPublisher<Void,Never>',
    'TimelineSchedule': 'AnimationTimelineSchedule',
}

for entity in ['view', 'gesture']:
    names = get_names(entity)
    output = []
    for struct in structs:
        name = struct['name']

        if not name in names:
            continue

        availabilities = struct.get('availabilities', [])
        availabilities = [clean_availability_string(x) for x in availabilities]
        if '@available(*)' in availabilities:
            availabilities.remove('@available(*)')
        lines = availabilities
        generics = struct.get('generics')
        if generics is None:
            t = f'typealias _{name} = SameTypeElement<{name}>'
        else:
            conditions = struct.get('conditions', {})
            arr = [conditions.get(gen, ['Never'])[-1] for gen in generics]
            arr = [preferedTypes.get(x, 'Never') for x in arr]
            gen = ",".join(arr)
            t = f"typealias _{name} = SameBaseElement<{name}<{gen}>>"       

        lines.append(t)
        
        if isnewswift(availabilities):
            lines.insert(0, "#if swift(>=6.0)")
            lines.append("#endif")

        output.append(lines)

    strings = ["\n".join(lines) for lines in output]

    content = "\n\n".join(strings)

    with open(f'{entity}.swift', 'w', encoding='utf-8') as f:
        f.write(content)





