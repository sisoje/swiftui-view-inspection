import SwiftUI

extension InspectableType._SecureField {
    var text: Binding<String> {
        get throws {
            try node.one(.binding).tryCast()
        }
    }
}