struct BenericTypeTree<GEN>: ReflectionTree {
    let root: ReflectionNode
    
    var typeInfo: TypeInfo {
        TypeInfo(GEN.self)
    }
}
