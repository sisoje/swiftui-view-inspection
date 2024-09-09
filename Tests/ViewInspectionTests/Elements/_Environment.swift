import SwiftUI
import XCTest
@testable import ViewInspection

@MainActor final class Test_Environment: XCTestCase {
    func testEnvironment() {
        struct Dummy: View {
            @Environment(\.colorScheme) private var colorScheme
            let body = EmptyView()
        }
        let t = Dummy().snap.all(.environment)
        XCTAssertEqual(t.count, 2)
        XCTAssert(t[1].node.parent === t[0].node)
    }
}