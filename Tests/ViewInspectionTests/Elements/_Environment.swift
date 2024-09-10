import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_Environment: XCTestCase {
    func test_Environment() {
        struct Dummy: View {
            @Environment(\.colorScheme) private var colorScheme
            let body = EmptyView()
        }
        let t = Dummy().snap.all(.environment)
        XCTAssertEqual(t.count, 2)
        XCTAssert(t[1].node.parent === t[0].node)
    }
}
