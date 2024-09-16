import requests
import json
import re

# Define the supported versions
supported_versions = {
    "iOS": "15.0",
    "macOS": "12.0",
    "tvOS": "15.0",
    "watchOS": "8.0",
    "visionOS": "1.0"
}

newswift = ['iOS 18.0', 'macOS 15.0', 'tvOS 18.0', 'watchOS 11.0', 'visionOS 2.0']

def decapitalize(s):
    if not s:
        return s
    return s[0].lower() + s[1:]


def clean_availability_string(availability):
    ava = availability
    for plat, vers in supported_versions.items():
        pattern = plat + r" (\d+\.\d+), "
        match = re.search(pattern, ava)
        if match:
            aversion = match.group(1)
            if float(aversion) <= float(vers):
                ava = re.sub(pattern, "", ava)
    return ava


def isnewswift(availabilities):
    for n in newswift:
        for a in availabilities:
            if n in a:
                return True
    return False

def get_names(entity):
    fname = f"{entity}.json"
    try:
        with open(fname, 'r') as file:
            return json.load(file)
    except:
        None

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
    with open(fname, 'w', encoding='utf-8') as f:
        json.dump(names, f, ensure_ascii=False, indent=4)
    return names

with open('swiftui.json', 'r') as file:
    structs = json.load(file)
    
preferedTypes = {
    'NSApplicationDelegate': 'NSDummyDelegate',
    'UIApplicationDelegate': 'UIDummyDelegate',
    'NSObject': 'NSObject',
    'BinaryFloatingPoint': 'Double',
    'Onservable': '_PreviewHost',
    'ObservableObject': '_PreviewHost',
    'NSFetchRequestResult':  'NSDictionary',
    'View' : 'Never',
    'Shape': 'Circle',
    'InsettableShape': 'Circle',
    'Hashable': 'Int',
    'RandomAccessCollection': 'Array<Never>',
    'Publisher': 'AnyPublisher<Void,Never>',
    'TimelineSchedule': 'AnimationTimelineSchedule',
}

for entity in ['view', 'gesture', 'dynamicproperty']:
    names = get_names(entity)
    types = []
    inspectables = []
    for struct in structs:
        name = struct['name']

        if not name in names:
            continue

        availabilities = struct.get('availabilities', [])
        availabilities = [clean_availability_string(x) for x in availabilities]
        if '@available(*)' in availabilities:
            availabilities.remove('@available(*)')
        generics = struct.get('generics')
        if generics is None:
            t = f'typealias _{name} = SameBaseElement<{name}>'
        else:
            conditions = struct.get('conditions', {})
            arr = [conditions.get(gen, ['Never'])[-1] for gen in generics]
            arr = [preferedTypes.get(x, 'Never') for x in arr]
            gen = ",".join(arr)
            t = f"typealias _{name} = SameBaseElement<{name}<{gen}>>"       

        lines = []
        lines += availabilities
        lines.append(t)
        if isnewswift(availabilities):
            lines.insert(0, "#if swift(>=6.0)")
            lines.append("#endif")
        if name == 'UIApplicationDelegateAdaptor':
            lines.insert(0, "#if os(iOS) || os(tvOS)")
            lines.append("#endif")
        if name =='NSApplicationDelegateAdaptor':
            lines.insert(0, "#if os(macOS)")
            lines.append("#endif")
        types.append("\n".join(lines))
        
        lines = []
        lines += availabilities
        lines.append(f"static var {decapitalize(name)}: AnyInspectable<InspectableType._{name}> " + "{ .some }")
        if isnewswift(availabilities):
            lines.insert(0, "#if swift(>=6.0)")
            lines.append("#endif")
        if name == 'UIApplicationDelegateAdaptor':
            lines.insert(0, "#if os(iOS) || os(tvOS)")
            lines.append("#endif")
        if name =='NSApplicationDelegateAdaptor':
            lines.insert(0, "#if os(macOS)")
            lines.append("#endif")
        inspectables.append("\n".join(lines))

    imports = ['import SwiftUI']
    if entity == 'view':
        imports.append('import Combine')

    with open(f'../Sources/ViewInspection/Generated/InspectableType+{entity.capitalize()}.swift', 'w', encoding='utf-8') as f:
        content = "\n".join(imports) + "\n\nextension InspectableType {\n" + "\n\n".join(types) + "\n}"
        f.write(content)

    with open(f'../Sources/ViewInspection/Generated/AnyInspectable+{entity.capitalize()}.swift', 'w', encoding='utf-8') as f:
        content = "extension AnyInspectable {\n" + "\n\n".join(inspectables) + "\n}"
        f.write(content)
