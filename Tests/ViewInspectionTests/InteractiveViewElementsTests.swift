import SwiftUI
import XCTest
@testable import ViewInspection

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func test_Toggle() throws {
        let b = Binding<Bool>.variable(false)
        try Toggle("", isOn: b).snap.one(.toggle).toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }

    func test_Button() throws {
        var value = 0
        try Button("") { value = 1 }.snap.one(.button).action()
        XCTAssertEqual(value, 1)
    }

    func test_TextField() throws {
        let textFieldBinding = Binding<String>.variable("")
        let textField = try TextField("", text: textFieldBinding).snap.one(.textField)
        XCTAssertEqual(textFieldBinding.wrappedValue, "")
        try textField.text.wrappedValue = "a"
        XCTAssertEqual(textFieldBinding.wrappedValue, "a")
    }
    
    func test_Slider() throws {
        let binding: Binding<Float> = .variable(0)
        let sliderBinding = try Slider(value: binding).snap.one(.slider).value
        XCTAssertEqual(binding.wrappedValue, 0)
        sliderBinding.wrappedValue = 1
        XCTAssertEqual(binding.wrappedValue, 1)
    }
}
