import re
import json
import glob

def parse_file(input_file):
    output = []
    with open(input_file) as f:
        lines = [line.rstrip() for line in f]

        for idx, line in enumerate(lines):
            if not line.startswith(" ") and "public struct" in line:
                linije = []
                i = idx - 1
                while lines[i].startswith('@'):
                    if lines[i].startswith('@available'):
                        linije.insert(0, lines[i])
                    i -= 1

                output.append({
                    'struct': line,
                    'availabilities': linije
                })
    return output



def parse_generic_struct(line):
    # Regex to capture generic structs with conformances
    generic_struct_pattern = r'public struct (\w+)<([^>]+)>(?:\s*:\s*([^{]+))?'
    
    match = re.search(generic_struct_pattern, line)
    if match:
        struct_name = match.group(1)
        generics = match.group(2)
        conformances = match.group(3).split(', ') if match.group(3) else []
        conformances = [x.split(".")[1].strip() for x in conformances]
        return { 'name': struct_name, 'generics': generics.split(', '), 'conformances': conformances }
    return None


def parse_non_generic_struct(line):
    # Regex to capture non-generic structs with conformances
    non_generic_struct_pattern = r'public struct (\w+)\s+(?:\s*:\s*([^{]+))?'
    
    match = re.search(non_generic_struct_pattern, line)
    if match:
        struct_name = match.group(1)
        conformances = match.group(2).split(', ') if match.group(2) else []
        conformances = [x.split(".")[1].strip() for x in conformances]
        return { 'name': struct_name, 'conformances': conformances }
    return None


def parse_swift_generic_conditions(declaration):
    # Extract the part after 'where'
    where_clause = re.search(r'where\s+(.+)(?=\s*\{)', declaration)
    if not where_clause:
        return None

    conditions = where_clause.group(1)
    
    # Split conditions by comma
    condition_list = [c.strip() for c in conditions.split(',')]
    
    parsed_conditions = {}
    for conditionx in condition_list:
        condition = conditionx.replace("==", ":")
      
        # Protocol conformance or class inheritance
        left, right = condition.split(':', 1)
        right = right.strip().split('.')[1]
        type = left.strip()

        oldarr = parsed_conditions.get(type, [])
        oldarr.append(right)
        parsed_conditions[type] = oldarr
    
    return { 'conditions': parsed_conditions }

results = []
for plat in ['iPhoneOS', 'MacOSX']:
    for f in ['SwiftUI', 'SwiftUICore']:
        interface = f'/Applications/Xcode.app/Contents/Developer/Platforms/{plat}.platform/Developer/SDKs/{plat}.sdk/System/Library/Frameworks/{f}.framework/'
        for file in glob.glob(f'{interface}/**/*.swiftinterface', recursive=True):
            print(file)
            results += parse_file(file)

parsed = "swiftui.json"

parsed_results = []

for result in results:
    line = result['struct']
    levo = line.split('where', 1)[0]
    parsed_struct = parse_non_generic_struct(levo)
    if parsed_struct is None:
        parsed_struct = parse_generic_struct(levo)

    dic = result
    dic.update(parsed_struct)
    
    parsed_conditions = parse_swift_generic_conditions(line)
    if parsed_conditions is not None:
        dic.update(parsed_conditions)

    parsed_results.append(dic)

parsed_results = sorted(parsed_results, key=lambda x: x['name'].lower())

seen_names = set()
unique_data = []

for item in parsed_results:
    if item["name"] not in seen_names:
        unique_data.append(item)
        seen_names.add(item["name"])

with open(parsed, 'w', encoding='utf-8') as f:
    json.dump(unique_data, f, ensure_ascii=False, indent=4)
