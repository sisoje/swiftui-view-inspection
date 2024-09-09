import SwiftUI

extension InspectableType._TextField {
    var text: Binding<String> {
        get throws {
            try node.one(.binding).tryCast()
        }
    }
}