import SwiftUI
import XCTest
@testable import ViewInspection

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func test_Toggle() {
        let b = Binding<Bool>.variable(false)
        Toggle("", isOn: b).snapshot.oneElement(TestElement.View._Toggle.self).toggle()
        XCTAssertEqual(b.wrappedValue, true)
    }

    func test_Button() {
        var b = false
        Button("") { b = true }.snapshot.oneElement(TestElement.View._Button.self).tap()
        XCTAssertEqual(b, true)
    }
}
