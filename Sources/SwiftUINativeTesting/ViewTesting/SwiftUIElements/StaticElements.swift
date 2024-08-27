import SwiftUI

typealias TextReflection = TypedNodeReflection<Text>
typealias ImageReflection = TypedNodeReflection<Image>

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
