extension AnyInspectable {
    static func inspectableType<E>(_: E.Type = E.self) -> AnyInspectable<SameTypeElement<E>> {
        .some
    }

    static func inspectableClosure<E>(_: E.Type = E.self) -> AnyInspectable<ClosureElement<E>> {
        .some
    }
}
