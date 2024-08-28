struct BaseTypeTree<BASE>: ReflectionTree {
    let root: ReflectionNode

    static var basetype: String {
        TypeInfo(BASE.self).baseTypename
    }
    
    var basetype: String {
        Self.basetype
    }

    func cast<T>(_ t: T.Type = T.self) -> T? {
        root.object as? T
    }

    func forceCast<T>(_ t: T.Type = T.self) -> T {
        CastingUtils.memoryCast(root.object, T.self)
    }
}



