import SwiftUI

extension InspectableType._Text {
    var string: String {
        get throws {
            try node.one(.string).castValue
        }
    }
}
