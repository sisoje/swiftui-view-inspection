import SwiftUI

@available(tvOS 16.0, *)
extension InspectableType._onTapGesture {
    func tap() throws {
        try node.one(.closureWithVoidParam).castValue(())
    }
}
