import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_Button: XCTestCase {
    func test_Button() throws {
        var value = 0
        try Button("") { value = 1 }.snap.one(.button).action()
        XCTAssertEqual(value, 1)
    }
}
