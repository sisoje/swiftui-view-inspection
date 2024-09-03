struct TypeInfo {
    let typename: String
}

extension TypeInfo {
    var generics: [Substring] {
        let sub = parts.1
        var arr: [Substring] = []
        var startIndex = sub.startIndex
        var openBrackets = 0
        for currentIndex in sub.indices {
            let ch = sub[currentIndex]
            if openBrackets == 1, ch == "," || ch == ">" {
                let s = sub[sub.index(after: startIndex) ..< currentIndex]
                if !s.isEmpty {
                    arr.append(s)
                }
                startIndex = currentIndex
            }
            if ch == "<" {
                openBrackets += 1
            }
            if ch == ">" {
                openBrackets -= 1
            }
        }
        return arr
    }

    private var parts: (Substring, Substring) {
        guard
            let startIndex = typename.firstIndex(of: "<"),
            let endIndex = typename.lastIndex(of: ">"),
            startIndex < endIndex
        else {
            return (.init(typename), .init())
        }
        return (typename.prefix(upTo: startIndex), typename[startIndex ... endIndex])
    }

    var baseTypename: Substring { parts.0 }

    init(object: Any) {
        typename = String(reflecting: type(of: object))
    }

    init<T>(type: T.Type = T.self) {
        typename = String(reflecting: T.self)
    }
}
