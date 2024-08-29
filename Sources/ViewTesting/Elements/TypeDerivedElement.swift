struct TypeDerivedElement<T>: ReflectionElement {
    let node: ReflectionNode
}

extension TypeDerivedElement {
    static var typeInfo: TypeInfo { TypeInfo(T.self) }
    
    static func isSameType(_ node: ReflectionNode) -> Bool {
        node.object is T
    }
    
    static func isSameBasetype(_ node: ReflectionNode) -> Bool {
        node.typeInfo.baseTypename == typeInfo.baseTypename
    }
    
    static func isSameClosure(_ node: ReflectionNode) -> Bool {
        node.typeInfo.typename.hasSuffix(typeInfo.typename)
    }
    
    var castValue: T {
        CastingUtils.memoryCast(node.object)
    }
}
