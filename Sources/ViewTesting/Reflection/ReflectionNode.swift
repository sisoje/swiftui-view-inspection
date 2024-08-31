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
    
    var toggles: [TestElement.View._Toggle] { basetypeElements() }

    var buttons: [TestElement.View._Button] { basetypeElements() }
    
    var environments: [TestElement.PropertyWrapper._Environment] { basetypeElements() }
    
    var states: [TestElement.PropertyWrapper._State] { basetypeElements() }
    
    var bindings: [TestElement.PropertyWrapper._Binding] { basetypeElements() }
    
    var texts: [TestElement.View._Text] { typeElements() }
    
    var strings: [TestElement.Value._String] { typeElements() }
    
    var images: [TestElement.View._Image] { typeElements() }
    
    var voidParamActions: [TestElement.Value._voidParamClosure] { closureElements() }
    
    var actions: [TestElement.Value._closure] { closureElements() }
    
    var asyncActions: [TestElement.Value._asyncClosure] { closureElements() }
    
    var refreshableModifiers: [TestElement.Modifier._Refreshable] {
        func isModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix(".RefreshableModifier")
        }
        return allNodes.filter(isModifier).toElements()
    }

    var taskModifiers: [TestElement.Modifier._Task] {
        func isModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix("._TaskModifier")
        }
        return allNodes.filter(isModifier).toElements()
    }

    var onAppearModifiers: [TestElement.Modifier._OnAppear] {
        func isModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix("._AppearanceActionModifier")
        }
        return allNodes.filter(isModifier).toElements()
    }
    
    var onTapModifiers: [TestElement.Modifier._OnTap] {
        func isModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.typename == "SwiftUI._EndedGesture<SwiftUI.TapGesture>"
        }
        return allNodes.filter(isModifier).toElements()
    }
}
