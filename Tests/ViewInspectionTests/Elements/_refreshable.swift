import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_refreshable: XCTestCase {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_refreshable() async throws {
        var x = 0
        try await EmptyView().refreshable { x = 1 }.snap.one(.refreshable).refresh()
        XCTAssert(x == 1)
    }
}
