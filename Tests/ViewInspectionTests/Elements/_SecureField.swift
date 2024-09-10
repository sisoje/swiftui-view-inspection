import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_SecureField: XCTestCase {
    func test_SecureField() throws {
        let binding = Binding.variable("")
        let secureField = try SecureField("", text: binding).snap.one(.secureField)
        XCTAssertEqual(binding.wrappedValue, "")
        try secureField.text.wrappedValue = "password123"
        XCTAssertEqual(binding.wrappedValue, "password123")
    }
}
