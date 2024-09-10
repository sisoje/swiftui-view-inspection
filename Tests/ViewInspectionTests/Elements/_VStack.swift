import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_VStack: XCTestCase {
    func test_VStack() throws {
        let vstack = try VStack { Text("a") }.snap.one(.vStack)
        XCTAssertEqual(try vstack.node.one(.text).string, "a")
    }
}
