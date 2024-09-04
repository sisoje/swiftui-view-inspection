import SwiftUI

extension View {
    var reflectionSnapshot: ReflectionNode {
        ReflectionNode(object: self)
    }
}
