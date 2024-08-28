struct ExactTypeTree<T>: ReflectionTree {
    let root: ReflectionNode

    var value: T {
        CastingUtils.memoryCast(root.object)
    }
}
