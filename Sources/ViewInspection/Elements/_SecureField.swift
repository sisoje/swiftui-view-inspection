import SwiftUI

extension InspectableType._SecureField {
    var binding: Binding<String> {
        get throws {
            try node.one(.binding).tryCast()
        }
    }
}
