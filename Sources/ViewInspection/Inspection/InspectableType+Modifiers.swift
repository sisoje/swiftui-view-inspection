import SwiftUI

extension InspectableType {
    struct _refreshable: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().refreshable {} }
    }

    @available(tvOS 16.0, *)
    struct _onTapGesture: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().onTapGesture {} }
    }
}
