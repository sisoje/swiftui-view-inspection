import SwiftUI
import XCTest
@testable import ViewInspection

@MainActor final class Test_Slider: XCTestCase {
    func test_Slider() throws {
        let binding = Binding.variable(0.0)
        let slider = try Slider(value: binding).snap.one(.slider)
        XCTAssertEqual(binding.wrappedValue, 0)
        try slider.value.wrappedValue = 1
        XCTAssertEqual(binding.wrappedValue, 1)
    }
}