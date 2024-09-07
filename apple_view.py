import requests
import json

url = 'https://developer.apple.com/tutorials/data/documentation/swiftui/view.json'
response = requests.get(url)
doc = response.json()
identifiers = doc['relationshipsSections'][1]['identifiers']
views = [x.split("/")[-1] for x in identifiers]

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

output = []
for struct in structs:
    name = struct['name']

    if not name in views:
        continue

    lines = struct.get('availabilities', [])
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

    output.append(lines)

strings = ["\n".join(lines) for lines in output]

content = "\n\n".join(strings)

with open('view.swift', 'w', encoding='utf-8') as f:
    f.write(content)





