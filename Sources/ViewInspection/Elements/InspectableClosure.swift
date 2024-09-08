enum InspectableClosure {
    typealias action = ClosureElement<() -> Void>
    typealias actionWithVoidParam = ClosureElement<(()) -> Void>
    typealias asyncAction = ClosureElement<() async -> Void>
}
