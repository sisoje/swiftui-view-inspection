import SwiftUI
@testable import ViewInspection
import XCTest

final class StaticViewElementsTests: XCTestCase {}

@MainActor extension StaticViewElementsTests {
    func test_Text() throws {
        XCTAssertEqual(try Text("a").snap.one(.text).string, "a")
    }

    func test_Image() throws {
        XCTAssertEqual(try Image(systemName: "circle").snap.one(.image).name, "circle")
    }
}
