import SwiftUI

extension InspectableType._Refreshable {
    func refresh() async throws {
        try await node.one(.asyncClosure).castValue()
    }
}