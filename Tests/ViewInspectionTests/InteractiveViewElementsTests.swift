import SwiftUI
import XCTest
@testable import ViewInspection

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func test_Toggle() {
        let b = Binding<Bool>.variable(false)
        Toggle("", isOn: b).inspect.one(.Toggle)?.toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }

    func test_Button() {
        var value = 0
        Button("") { value = 1 }.inspect.one(.Button)?.tap()
        XCTAssertEqual(value, 1)
    }

    func test_TextField() {
        let textFieldBinding = Binding<String>.variable("")
        let textField = TextField("", text: textFieldBinding).inspect.one(.TextField)
        XCTAssertEqual(textFieldBinding.wrappedValue, "")
        textField?.text.wrappedValue = "a"
        XCTAssertEqual(textFieldBinding.wrappedValue, "a")
    }
}
