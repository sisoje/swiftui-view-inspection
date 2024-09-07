import SwiftUI
@testable import ViewInspection
import XCTest

final class StaticViewElementsTests: XCTestCase {}

@MainActor extension StaticViewElementsTests {
    func test_Text() {
        XCTAssertEqual(
            Text("a").inspection.oneElement(TestElement.View._Text.self).string,
            "a"
        )
    }

    func test_Image() {
        let ref = Image(systemName: "circle").inspection.oneElement(TestElement.View._Image.self)
        XCTAssertEqual(ref.name, "circle")
    }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    func test_NavigationStack() {
        XCTAssertEqual(
            NavigationStack { Text("a") }
                .inspection
                .oneElement(TestElement.View._NavigationStack.self)
                .node
                .oneElement(TestElement.View._Text.self)
                .string,
            "a"
        )
    }

    func test_GeometryReader() {
        XCTAssertEqual(
            GeometryReader { _ in }
                .inspection
                .allElements(TestElement.View._GeometryReader.self)
                .count,
            1
        )
    }

    func test_ForEach() {
        XCTAssertEqual(
            ForEach(Array(0 ... 1), id: \.self) {
                Text($0.description)
            }
            .inspection
            .allElements(TestElement.View._ForEach.self)
            .count,
            2
        )
        XCTAssertEqual(
            ForEach(Array(0 ... 1), id: \.self) {
                Text($0.description)
            }
            .inspection
            .allElements(TestElement.View._Text.self)
            .count,
            0
        )
    }
}
