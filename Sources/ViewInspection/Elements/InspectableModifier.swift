import SwiftUI

enum InspectableModifier {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    struct _Refreshable: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().refreshable {} }
    }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    struct _Task: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().task {} }
    }

    @available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
    struct _OnTap: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().onTapGesture {} }
    }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension InspectableModifier._Refreshable {
    func doRefresh() async {
        await node.one(.asyncClosure)?.castValue()
    }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension InspectableModifier._Task {
    func doTask() async {
        await node.one(.asyncClosure)?.castValue()
    }
}

@available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
extension InspectableModifier._OnTap {
    func doTap() {
        node.one(.closureWithVoidParam)?.castValue(())
    }
}
