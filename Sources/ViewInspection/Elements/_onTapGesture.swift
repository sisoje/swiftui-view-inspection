import SwiftUI

@available(tvOS 16.0, *)
extension InspectableType._onTapGesture {
    var closure: () -> Void {
        get throws {
            let originalClosure: (()) -> Void = try node.one(.inspectableClosure()).castValue
            return {
                originalClosure(())
            }
        }
    }
}
