import SwiftUI

extension InspectableType._Button {
    var closure: () -> Void {
        get throws {
            try node.one(.inspectableClosure()).castValue
        }
    }
}
