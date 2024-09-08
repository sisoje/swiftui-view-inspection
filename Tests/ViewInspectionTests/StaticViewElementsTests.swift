import SwiftUI
@testable import ViewInspection
import XCTest

final class StaticViewElementsTests: XCTestCase {}

@MainActor extension StaticViewElementsTests {
    func test_Text() throws {
        XCTAssertEqual(
            try Text("a").snap.one(.Text).string,
            "a"
        )
    }

    func test_Image() throws {
        let ref = try Image(systemName: "circle").snap.one(.Image)
        XCTAssertEqual(try ref.name, "circle")
    }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    func test_NavigationStack() throws {
        XCTAssertEqual(
            try NavigationStack { Text("a") }
                .snap
                .one(.NavigationStack)
                .node
                .one(.Text)
                .string,
            "a"
        )
    }

    func test_GeometryReader() {
        XCTAssertEqual(
            GeometryReader { _ in }
                .snap
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
            .snap
                .all(.ForEach)
            .count,
            2
        )
        XCTAssertEqual(
            ForEach(Array(0 ... 1), id: \.self) {
                Text($0.description)
            }
            .snap
            .all(.Text)
            .count,
            0
        )
    }
}
