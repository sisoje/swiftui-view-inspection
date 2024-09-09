import SwiftUI
import XCTest
@testable import ViewInspection

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func test_Toggle() throws {
        let b = Binding.variable(false)
        try Toggle("", isOn: b).snap.one(.toggle).toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }

    func test_Button() throws {
        var value = 0
        try Button("") { value = 1 }.snap.one(.button).action()
        XCTAssertEqual(value, 1)
    }

    func test_TextField() throws {
        let binding = Binding.variable("")
        let textField = try TextField("", text: binding).snap.one(.textField)
        XCTAssertEqual(binding.wrappedValue, "")
        try textField.text.wrappedValue = "a"
        XCTAssertEqual(binding.wrappedValue, "a")
    }
    
    func test_Slider() throws {
        let binding = Binding.variable(0.0)
        let slider = try Slider(value: binding).snap.one(.slider)
        XCTAssertEqual(binding.wrappedValue, 0)
        try slider.value.wrappedValue = 1
        XCTAssertEqual(binding.wrappedValue, 1)
    }
}
