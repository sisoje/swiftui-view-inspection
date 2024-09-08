import SwiftUI
import XCTest
@testable import ViewInspection

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func test_Toggle() throws {
        let b = Binding<Bool>.variable(false)
        try Toggle("", isOn: b).snap.one(.Toggle).toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }

    func test_Button() throws {
        var value = 0
        try Button("") { value = 1 }.snap.one(.Button).tap()
        XCTAssertEqual(value, 1)
    }

    func test_TextField() throws {
        let textFieldBinding = Binding<String>.variable("")
        let textField = try TextField("", text: textFieldBinding).snap.one(.TextField)
        XCTAssertEqual(textFieldBinding.wrappedValue, "")
        try textField.text.wrappedValue = "a"
        XCTAssertEqual(textFieldBinding.wrappedValue, "a")
    }
}
