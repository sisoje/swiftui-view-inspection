import SwiftUI
import XCTest
@testable import ViewInspection

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func testToggle() {
        let b = Binding<Bool>.variable(false)
        Toggle("", isOn: b).reflectionSnapshot.oneElement(TestElement.View._Toggle.self).toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }

    func testButton() {
        var b = false
        Button("") { b = true }.reflectionSnapshot.oneElement(TestElement.View._Button.self).tap()
        XCTAssertEqual(b, true)
    }
}
