import SwiftUI

extension View {   
    var reflectionTree: ExactTypeTree<Self> {
        ExactTypeTree(root: ReflectionNode(object: self))
    }
}
