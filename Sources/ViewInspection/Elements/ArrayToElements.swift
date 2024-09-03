extension Array<ReflectionNode> {
    func toElements<T: ReflectionElement>() -> [T] { map(T.init) }
}
