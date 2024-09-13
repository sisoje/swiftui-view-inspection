import SwiftUI

extension InspectableType._Image {
    var name: String {
        get throws {
            try node.one(.inspectableType()) {
                $0.node.label == "name"
            }.castValue
        }
    }
}
