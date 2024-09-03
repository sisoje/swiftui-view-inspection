import SwiftUI
import XCTest

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func testToggle() {
        let b = Binding<Bool>.variable(false)
        Toggle("", isOn: b).reflectionSnapshot.toggles[0].toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }

    func testButton() {
        var b = false
        Button("") { b = true }.reflectionSnapshot.buttons[0].tap()
        XCTAssertEqual(b, true)
    }
}
