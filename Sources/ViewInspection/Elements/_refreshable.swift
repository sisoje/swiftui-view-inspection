import SwiftUI

extension InspectableType._refreshable {
    func refresh() async throws {
        try await node.one(.asyncClosure).castValue()
    }
}
