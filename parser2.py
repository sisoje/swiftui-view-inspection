import re
import json

def parse_file(input_file):
	try:
		output = []
		with open(input_file) as f:
			lines = [line.rstrip() for line in f]

			for idx, line in enumerate(lines):
				if not line.startswith(" ") and "public struct" in line:
					linije = []
					i = idx - 1
					while lines[i].startswith('@available'):
						linije.insert(0, lines[i])
						i -= 1

					output.append({
						'struct': line,
						'availabilities': linije
					})
		return output
	except:
		return []

def parse_generic_struct(line):
    # Regex to capture generic structs with conformances
    generic_struct_pattern = r'public struct (\w+)<([^>]+)>\s+(?:\s*:\s*([^{]+))?'
    
    match = re.search(generic_struct_pattern, line)
    if match:
        struct_name = match.group(1)
        generics = match.group(2)
        conformances = match.group(3).split(', ') if match.group(3) else []
        conformances = [x.split(".")[1] for x in conformances]
        return { 'name': struct_name, 'generics': generics.split(', '), 'conformances': conformances }
    return None

def parse_non_generic_struct(line):
    # Regex to capture non-generic structs with conformances
    non_generic_struct_pattern = r'public struct (\w+)\s+(?:\s*:\s*([^{]+))?'
    
    match = re.search(non_generic_struct_pattern, line)
    if match:
        struct_name = match.group(1)
        conformances = match.group(2).split(', ') if match.group(2) else []
        conformances = [x.split(".")[1] for x in conformances]
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
    parsed_types = {}
    for condition in condition_list:
        if ':' in condition:
            # Protocol conformance or class inheritance
            left, right = condition.split(':', 1)
            right = right.strip().split('.')[1]
            type = left.strip()
            parsed_conditions[type] = right
            parsed_types[type] = '==' if '==' in condition else ':'
    
    return {'conditions':parsed_conditions, 'condition_relations':parsed_types }

interface0 = '/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/SwiftUI.framework/Modules/SwiftUI.swiftmodule/arm64-apple-ios.swiftinterface'
interface1 = '/Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/SwiftUI.framework/Modules/SwiftUI.swiftmodule/arm64-apple-ios.swiftinterface'
interface2 = '/Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks/SwiftUICore.framework/Modules/SwiftUICore.swiftmodule/arm64-apple-ios.swiftinterface'
parsed = "parsed.json"

results = parse_file(interface0) + parse_file(interface1) + parse_file(interface2)
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

with open(parsed, 'w', encoding='utf-8') as f:
	json.dump(parsed_results, f, ensure_ascii=False, indent=4)

exit(0)
mapping = {
	"SwiftUICore.Shape": "Circle",
	"SwiftUICore.View": "AnyView",
	"Swift.Hashable": "Int"
}

def transform(struct):
	# print(struct)
	generic_struct_pattern = r'public struct (\w+)<([^>]+)>'
	# reg = "public\s+struct\s+(\w+)\s*<([^>]+)>\s*:\s*([\w.]+)"
	m = re.search(r"public struct (\w+)([^>]+)>\s*:\s*([\w.]+)", struct)
	if m is None:
		return None
	if m.group(3) != "SwiftUICore.View":
		return None
	sname = m.group(1)
	gener = m.group(2)

	parts = struct.split(' where ', 1)
	values = [item for item in parts[-1].split(', ')]

	dic = {}
	for val in values:
		infos = re.split(r'\s:\s|\s==\s', val)
		dic[infos[0]] = infos[1]

	keys = gener.split(", ")

	c = {}
	g2 = []
	for key in keys:
		t1 = dic.get(key, "N/A")
		t = mapping.get(t1, "Never")
		c[key] = t
		g2.append(t)

	x = ", ".join(g2)
	return f"typealias _{sname} = SameBaseElement<{sname}<{x}>>"

var = []
for r in results:
	str = r[-1]
	t = transform(str)
	if t is None:
		continue
	nr = r
	nr[-1] = t
	t = "\n".join(nr)
	var.append(t)

cont = "\n\n".join(var)

print(cont)

