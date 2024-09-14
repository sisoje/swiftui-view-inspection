import SwiftUI

extension InspectableType._TextField {
    var binding: Binding<String> {
        get throws {
            try node.one(.binding).tryCast()
        }
    }
}
