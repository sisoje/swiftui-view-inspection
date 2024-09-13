import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_Toggle: XCTestCase {
    func test_Toggle() throws {
        let b = Binding.variable(false)
        try Toggle("", isOn: b).snap.one(.toggle).binding.wrappedValue.toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }
}
