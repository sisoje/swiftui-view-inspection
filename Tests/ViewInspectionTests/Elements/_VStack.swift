import SwiftUI
import XCTest
@testable import ViewInspection

@MainActor final class Test_VStack: XCTestCase {
    func test_VStack() throws {
        let vstack = try VStack { Text("a") }.snap.one(.vStack)
        XCTAssertEqual(try vstack.content.one(.text).string, "a")
    }
}