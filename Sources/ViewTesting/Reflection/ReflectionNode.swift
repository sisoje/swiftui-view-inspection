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
    
    func baseTypeElements<T: ReflectionTree, GEN>(_ t: GEN.Type) -> [T] {
        let basetype = TypeInfo(GEN.self).baseTypename
        return allNodes.filter { $0.typeInfo.baseTypename == basetype }.map(T.init)
    }
    
    var toggles: [TestUI._Toggle] { baseTypeElements(Toggle<AnyView>.self) }

    var buttons: [TestUI._Button] { baseTypeElements(Button<AnyView>.self)  }
    
    var environments: [BenericTypeTree<Environment<Any>>] { baseTypeElements(Environment<Any>.self) }
    
    var states: [BenericTypeTree<State<Any>>] { baseTypeElements(State<Any>.self) }
    
    var bindings: [BenericTypeTree<Binding<Any>>] { baseTypeElements(Binding<Any>.self) }
    
    var texts: [TestUI._Text] { baseTypeElements(Text.self) }
    
    var strings: [ExactTypeTree<String>] { baseTypeElements(String.self) }
    
    var images: [TestUI._Image] { baseTypeElements(Image.self) }
    
    var actions: [ExactTypeTree<() -> Void>] {
        let basetype = TypeInfo((() -> Void).self).baseTypename
        return allNodes.filter { $0.typeInfo.typename.hasSuffix(basetype) }.map(ExactTypeTree.init)
    }
    
    var asyncActions: [ExactTypeTree<() async -> Void>] {
        let basetype = TypeInfo((() async -> Void).self).baseTypename
        return allNodes.filter { $0.typeInfo.typename.hasSuffix(basetype) }.map(ExactTypeTree.init)
    }
}
