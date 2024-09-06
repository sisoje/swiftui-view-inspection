protocol ReflectionElement {
    var node: ReflectionNode { get }
    init(node: ReflectionNode)
    static func isValid(_ node: ReflectionNode) -> Bool
}
