import SwiftUI

extension InspectableType._refreshable {
    var closure: () async -> Void {
        get throws {
            try node.one(.inspectableClosure()).castValue
        }
    }
}
