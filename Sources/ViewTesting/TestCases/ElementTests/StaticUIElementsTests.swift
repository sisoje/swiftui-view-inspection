import SwiftUI
import XCTest

final class StaticUIElementsTests: XCTestCase {}

@MainActor extension StaticUIElementsTests {
    func testText() {
        XCTAssertEqual(Text("a").reflectionTree.texts[0].string, "a")
    }
    
    func testImage() {
        XCTAssertEqual(Image(systemName: "circle").reflectionTree.images[0].name, "circle")
    }
}
