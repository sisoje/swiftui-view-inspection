import SwiftUI

@available(tvOS 16.0, *)
extension InspectableType._OnTap {
    func tap() throws {
        try node.one(.closureWithVoidParam).castValue(())
    }
}