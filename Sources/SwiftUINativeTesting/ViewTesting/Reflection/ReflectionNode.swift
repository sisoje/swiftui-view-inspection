import Foundation

final class ReflectionNode: @unchecked Sendable {
    init(object: Any, label: String? = nil, parent: ReflectionNode? = nil) {
        self.object = object
        self.label = label ?? ""
        self.parent = parent
        typeInfo = TypeInfo(object: object)
        mirror = Mirror(reflecting: object)
        children = mirror.children.map { node in
            ReflectionNode(object: node.value, label: node.label, parent: self)
        }
    }

    private(set) weak var parent: ReflectionNode?
    private(set) var children: [ReflectionNode] = []
    let label: String
    let object: Any
    let mirror: Mirror
    let typeInfo: TypeInfo
}

// MARK: - Utilities

extension ReflectionNode {
    var allNodes: [ReflectionNode] {
        children.reduce([self]) { $0 + $1.allNodes }
    }
}
