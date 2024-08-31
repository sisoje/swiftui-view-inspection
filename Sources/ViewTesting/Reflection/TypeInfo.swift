struct TypeInfo {
    let typename: String
}

extension TypeInfo {
    var generics: [TypeInfo] {
        guard
            var startIndex = typename.firstIndex(of: "<"),
            let endIndex = typename.lastIndex(of: ">")
        else {
            return []
        }
        var arr: [Substring] = []
        var currentIndex = startIndex
        var openBrackets = 0
        while currentIndex < endIndex {
            currentIndex = typename.index(after: currentIndex)
            let ch = typename[currentIndex]
            if openBrackets == 0, ch == "," || ch == ">" {
                arr.append(typename[typename.index(after: startIndex) ..< currentIndex])
                startIndex = currentIndex
            }
            if ch == "<" {
                openBrackets += 1
            }
            if ch == ">" {
                openBrackets -= 1
            }
        }
        return arr.map { TypeInfo(typename: String($0)) }
    }

    var baseTypename: Substring {
        let ind = typename.firstIndex(of: "<") ?? typename.endIndex
        return typename.prefix(upTo: ind)
    }

    init(object: Any) {
        typename = String(reflecting: type(of: object))
    }

    init<T>(type: T.Type = T.self) {
        typename = String(reflecting: T.self)
    }
}
