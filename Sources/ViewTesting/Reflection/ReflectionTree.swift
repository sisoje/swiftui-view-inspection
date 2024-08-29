import SwiftUI

protocol ReflectionTree {
    var root: ReflectionNode { get }
    init(root: ReflectionNode)
}

extension ReflectionTree {
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
