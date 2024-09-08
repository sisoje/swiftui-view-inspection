import SwiftUI

extension View {
    var snap: ReflectionNode {
        ReflectionNode(object: self)
    }
}
