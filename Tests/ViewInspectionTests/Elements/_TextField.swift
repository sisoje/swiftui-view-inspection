import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_TextField: XCTestCase {
    func test_TextField() throws {
        let binding = Binding.variable("")
        let textField = try TextField("", text: binding).snap.one(.textField)
        XCTAssertEqual(binding.wrappedValue, "")
        try textField.binding.wrappedValue = "a"
        XCTAssertEqual(binding.wrappedValue, "a")
    }
}
