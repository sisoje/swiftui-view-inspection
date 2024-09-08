import SwiftUI

final class ReflectionNode: @unchecked Sendable {
    init(object: Any, label: String? = nil, parent: ReflectionNode? = nil) {
        self.object = object
        self.label = label ?? ""
        self.parent = parent
        typeInfo = TypeInfo(object: object)
        mirror = Mirror(reflecting: object)
        children = mirror.children.map { child in
            ReflectionNode(object: child.value, label: child.label, parent: self)
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
    
    func inspectables<CP: ReflectionElement>(_ t: Inspectable<CP> = .some) -> [CP] {
        allNodes.filter(CP.isValid).map(CP.init)
    }

    func allElements<CP: ReflectionElement>(_ t: CP.Type = CP.self) -> [CP] {
        allNodes.filter(CP.isValid).map(CP.init)
    }
    
    func oneElement<CP: ReflectionElement>(_ t: CP.Type = CP.self) -> CP {
        let arr: [CP] = allElements()
        assert(arr.count == 1)
        return arr[0]
    }
}
