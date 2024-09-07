import SwiftUI

extension View {
    var snapshot: ReflectionNode {
        ReflectionNode(object: self)
    }
}
