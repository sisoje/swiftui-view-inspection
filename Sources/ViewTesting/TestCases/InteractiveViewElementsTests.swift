import SwiftUI
import XCTest

final class InteractiveViewElementsTests: XCTestCase {}

@MainActor extension InteractiveViewElementsTests {
    func testToggle() {
        struct DummyView: View {
            @Binding var isOn: Bool
            var body: some View {
                Toggle(isOn: $isOn, label: EmptyView.init)
            }
        }

        let view = DummyView(isOn: .variable(false))
        XCTAssertEqual(view.isOn, false)
        view.body.reflectionTree.toggles[0].toggle()
        XCTAssertEqual(view.isOn, true)
    }

    func testButton() {
        struct DummyView: View {
            @Binding var isOn: Bool
            var body: some View {
                Button(action: { isOn.toggle() }, label: EmptyView.init)
            }
        }

        let view = DummyView(isOn: .variable(false))
        XCTAssertEqual(view.isOn, false)
        view.body.reflectionTree.buttons[0].tap()
        XCTAssertEqual(view.isOn, true)
    }
}
