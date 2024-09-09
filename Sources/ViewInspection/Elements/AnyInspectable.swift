enum AnyInspectable<T: ReflectionElement> {
    typealias Element = T
    case some
}

// MARK: - modifiers

extension AnyInspectable {
    @available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
    static var onTap: AnyInspectable<InspectableType._OnTap> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
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
