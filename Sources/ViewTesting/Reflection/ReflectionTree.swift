protocol ReflectionTree {
    var root: ReflectionNode { get }
}

extension ReflectionTree {
    func genericTypeNodes<T>() -> [BaseTypeTree<T>] {
        let baseTypename = TypeInfo(T.self).baseTypename
        return root.allNodes.filter { $0.typeInfo.baseTypename == baseTypename }.map(BaseTypeTree<T>.init)
    }
    
    func valueNodes<T>(_ t: T.Type = T.self) -> [ExactTypeTree<T>] {
        root.allNodes.filter { $0.object is T }.map(ExactTypeTree.init)
    }
    
    var asyncActions: [ExactTypeTree<() async -> Void>] {
        let typename = TypeInfo((() async -> Void).self).typename
        return root.allNodes.filter { $0.typeInfo.typename.hasSuffix(typename) }.map(ExactTypeTree.init)
    }
    
    var actions: [ExactTypeTree<() -> Void>] {
        let basetype = TypeInfo((() -> Void).self).baseTypename
        return root.allNodes.filter { $0.typeInfo.typename.hasSuffix(basetype) }.map(ExactTypeTree.init)
    }
    
    var strings: [ExactTypeTree<String>] { valueNodes() }
    
    var images: [ImageReflection] { valueNodes() }
    
    var texts: [TextReflection] { valueNodes() }
    
    var environments: [EnvironmentReflection] { genericTypeNodes() }

    var bindings: [BindingReflection] { genericTypeNodes() }

    var states: [StateReflection] { genericTypeNodes() }

    var toggles: [ToggleReflection] { genericTypeNodes() }

    var buttons: [ButtonReflection] { genericTypeNodes() }

    var refreshableModifiers: [RefreshableReflection] {
        func isRefreshableModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix(".RefreshableModifier")
        }
        return root.allNodes.filter { isRefreshableModifier($0) }.map(RefreshableReflection.init)
    }

    var taskModifiers: [TaskReflection] {
        func isRefreshableModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix("._TaskModifier")
        }
        return root.allNodes.filter { isRefreshableModifier($0) }.map(TaskReflection.init)
    }

    var onAppearModifiers: [OnAppearReflection] {
        func isRefreshableModifier(_ ref: ReflectionNode) -> Bool {
            ref.typeInfo.baseTypename.hasPrefix("SwiftUI.") && ref.typeInfo.baseTypename.hasSuffix("._AppearanceActionModifier")
        }
        return root.allNodes.filter { isRefreshableModifier($0) }.map(OnAppearReflection.init)
    }
}
