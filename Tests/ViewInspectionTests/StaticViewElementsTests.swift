import SwiftUI
@testable import ViewInspection
import XCTest

final class StaticViewElementsTests: XCTestCase {}

@MainActor extension StaticViewElementsTests {
    func test_Text() {
        XCTAssertEqual(
            Text("a").inspect.one(.Text)?.string,
            "a"
        )
    }

    func test_Image() {
        let ref = Image(systemName: "circle").inspect.one(.Image)
        XCTAssertEqual(ref?.name, "circle")
    }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    func test_NavigationStack() {
        XCTAssertEqual(
            NavigationStack { Text("a") }
                .inspect
                .one(.NavigationStack)?
                .node
                .one(.Text)?
                .string,
            "a"
        )
    }

    func test_GeometryReader() {
        XCTAssertEqual(
            GeometryReader { _ in }
                .inspect
                .all(.GeometryReader)
                .count,
            1
        )
    }

    func test_ForEach() {
        XCTAssertEqual(
            ForEach(Array(0 ... 1), id: \.self) {
                Text($0.description)
            }
            .inspect
                .all(.ForEach)
            .count,
            2
        )
        XCTAssertEqual(
            ForEach(Array(0 ... 1), id: \.self) {
                Text($0.description)
            }
            .inspect
            .all(.Text)
            .count,
            0
        )
    }
}
