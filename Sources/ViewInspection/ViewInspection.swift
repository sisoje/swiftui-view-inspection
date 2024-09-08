import SwiftUI

extension View {
    var inspect: ReflectionNode {
        ReflectionNode(object: self)
    }
}
