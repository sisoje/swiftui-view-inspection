import SwiftUI
import XCTest

final class StaticViewElementsTests: XCTestCase {}

@MainActor extension StaticViewElementsTests {
    func testText() {
        XCTAssertEqual(Text("a").reflectionSnapshot.texts[0].string, "a")
    }

    func testImage() {
        XCTAssertEqual(Image(systemName: "circle").reflectionSnapshot.images[0].name, "circle")
    }
    
    @available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
    func testNavigationStack() {
        XCTAssertEqual(NavigationStack { Text("a") }.reflectionSnapshot.navigationStacks[0].node.texts[0].string, "a")
    }
    
    func testGeomReader() {
        XCTAssertEqual(GeometryReader { _ in }.reflectionSnapshot.geometryReaders.count, 1)
    }
    
    func testForEach() {
        XCTAssertEqual(ForEach(Array(0...1), id:\.self) { Text($0.description) }.reflectionSnapshot.forEachs.count, 2)
    }
}
