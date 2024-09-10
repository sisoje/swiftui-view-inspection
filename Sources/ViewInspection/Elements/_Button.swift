import SwiftUI

extension InspectableType._Button {
    func action() throws {
        try node.one(.closure).castValue()
    }
}