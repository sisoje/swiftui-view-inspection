enum AnyInspectable<T: ReflectionElement> {
    typealias Element = T
    case some
}

// MARK: - modifiers

extension AnyInspectable {
    @available(tvOS 16.0, *)
    static var onTap: AnyInspectable<InspectableType._OnTap> { .some }

    static var refreshable: AnyInspectable<InspectableType._Refreshable> { .some }
}

// MARK: - closures

extension AnyInspectable {
    static var closure: AnyInspectable<ClosureElement<() -> Void>> { .some }
    static var closureWithVoidParam: AnyInspectable<ClosureElement<(()) -> Void>> { .some }
    static var asyncClosure: AnyInspectable<ClosureElement<() async -> Void>> { .some }
}

// MARK: -  native

extension AnyInspectable {
    static var string: AnyInspectable<SameTypeElement<String>> { .some }
}
