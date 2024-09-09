import SwiftUI

extension InspectableType {
    struct _Refreshable: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().refreshable {} }
    }

    @available(tvOS 16.0, *)
    struct _OnTap: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().onTapGesture {} }
    }
}