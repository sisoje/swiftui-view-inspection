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
    
    func basetypeElements<T>() -> [TypeDerivedElement<T>] {
        allNodes.filter(TypeDerivedElement<T>.isSameBasetype).toElements()
    }
    
    func typeElements<T>() -> [TypeDerivedElement<T>] {
        allNodes.filter(TypeDerivedElement<T>.isSameType).toElements()
    }
    
    func closureElements<T>() -> [TypeDerivedElement<T>] {
        allNodes.filter(TypeDerivedElement<T>.isSameClosure).toElements()
    }
    
    var toggles: [Elements.UI._Toggle] { basetypeElements() }

    var buttons: [Elements.UI._Button] { basetypeElements()  }
    
    var environments: [Elements.PropertyWrappers._Environment] { basetypeElements() }
    
    var states: [Elements.PropertyWrappers._State] { basetypeElements() }
    
    var bindings: [Elements.PropertyWrappers._Binding] { basetypeElements() }
    
    var texts: [Elements.UI._Text] { typeElements() }
    
    var strings: [Elements.Native._String] { typeElements() }
    
    var images: [Elements.UI._Image] { typeElements() }
    
    var actions: [Elements.Native._closure] { closureElements() }
    
    var asyncActions: [Elements.Native._asyncClosure] { closureElements() }
    
    var refreshableModifiers: [Elements.Modifiers._Refreshable] {
        func isModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix(".RefreshableModifier")
        }
        return allNodes.filter(isModifier).toElements()
    }

    var taskModifiers: [Elements.Modifiers._Task] {
        func isModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix("._TaskModifier")
        }
        return allNodes.filter(isModifier).toElements()
    }

    var onAppearModifiers: [Elements.Modifiers._OnAppear] {
        func isModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix("._AppearanceActionModifier")
        }
        return allNodes.filter(isModifier).toElements()
    }
}
