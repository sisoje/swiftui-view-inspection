import SwiftUI

extension View {
    var inspection: ReflectionNode {
        ReflectionNode(object: self)
    }
}
