import SwiftUI
@testable import ViewInspection
import XCTest

final class StaticViewElementsTests: XCTestCase {}

@MainActor extension StaticViewElementsTests {
    func testText() {
        XCTAssertEqual(
            Text("a").reflectionSnapshot.oneElement(TestElement.View._Text.self).string,
            "a"
        )
    }

    func testImage() {
        let ref = Image(systemName: "circle").reflectionSnapshot.oneElement(TestElement.View._Image.self)
        XCTAssertEqual(ref.name, "circle")
    }

    @available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
    func testNavigationStack() {
        XCTAssertEqual(
            NavigationStack { Text("a") }
                .reflectionSnapshot
                .oneElement(TestElement.View._NavigationStack.self)
                .node
                .oneElement(TestElement.View._Text.self)
                .string,
            "a"
        )
    }

    func testGeomReader() {
        XCTAssertEqual(
            GeometryReader { _ in }
                .reflectionSnapshot
                .allElements(TestElement.View._GeometryReader.self)
                .count,
            1
        )
    }

    func testForEach() {
        XCTAssertEqual(
            ForEach(Array(0 ... 1), id: \.self) {
                Text($0.description)
            }
            .reflectionSnapshot
            .allElements(TestElement.View._ForEach.self)
            .count,
            2
        )
        XCTAssertEqual(
            ForEach(Array(0 ... 1), id: \.self) {
                Text($0.description)
            }
            .reflectionSnapshot
            .allElements(TestElement.View._Text.self)
            .count,
            0
        )
    }
}
