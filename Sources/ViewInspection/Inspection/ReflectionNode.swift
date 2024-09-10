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
    var nodes: [ReflectionNode] {
        children.reduce([self]) { $0 + $1.nodes }
    }

    func all<CP: InspectionElement>(_ t: AnyInspectable<CP> = .some, _ filter: (CP) -> Bool = { _ in true }) -> [CP] {
        nodes.filter(CP.isValid).map(CP.init).filter(filter)
    }

    @discardableResult func one<CP: InspectionElement>(_ t: AnyInspectable<CP> = .some, _ filter: (CP) -> Bool = { _ in true }) throws -> CP {
        let items = all(t, filter)
        if items.count != 1 {
            throw InspectionError.wrongNumberOfItems
        }
        return items[0]
    }
}
