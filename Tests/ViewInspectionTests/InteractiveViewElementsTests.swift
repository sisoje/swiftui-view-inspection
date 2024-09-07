import SwiftUI
import XCTest
@testable import ViewInspection

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func test_Toggle() {
        let b = Binding<Bool>.variable(false)
        Toggle("", isOn: b).inspection.oneElement(TestElement.View._Toggle.self).toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }

    func test_Button() {
        var value = 0
        Button("") { value = 1 }.inspection.oneElement(TestElement.View._Button.self).tap()
        XCTAssertEqual(value, 1)
    }
}
