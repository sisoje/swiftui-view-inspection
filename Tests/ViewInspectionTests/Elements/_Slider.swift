import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_Slider: XCTestCase {
    func test_Slider() throws {
        let binding = Binding.variable(0.0)
        let slider = try Slider(value: binding).snap.one(.slider)
        XCTAssertEqual(binding.wrappedValue, 0)
        try slider.binding.wrappedValue = 1
        XCTAssertEqual(binding.wrappedValue, 1)
    }
}
