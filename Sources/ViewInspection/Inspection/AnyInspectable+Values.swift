extension AnyInspectable {
    static var closure: AnyInspectable<ClosureElement<() -> Void>> { .some }
    static var closureWithVoidParam: AnyInspectable<ClosureElement<(()) -> Void>> { .some }
    static var asyncClosure: AnyInspectable<ClosureElement<() async -> Void>> { .some }
    static var string: AnyInspectable<SameTypeElement<String>> { .some }
}
