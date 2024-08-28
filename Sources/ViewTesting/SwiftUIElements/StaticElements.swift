import SwiftUI

typealias TextReflection = ExactTypeTree<Text>
typealias ImageReflection = ExactTypeTree<Image>

extension TextReflection {
    var string: String {
        strings[0].value
    }
}

extension ImageReflection {
    var name: String {
        strings[0].value
    }
}
