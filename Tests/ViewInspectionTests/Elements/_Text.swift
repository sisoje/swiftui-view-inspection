import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_Text: XCTestCase {
    func test_Text() throws {
        XCTAssertEqual(try Text("a").snap.one(.text).string, "a")
    }
}