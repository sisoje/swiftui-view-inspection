import SwiftUI

extension View {   
    var reflectionTree: ReflectionNode {
        ReflectionNode(object: self)
    }
}
