import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_Image: XCTestCase {
    func test_Image() throws {
        XCTAssertEqual(try Image(systemName: "circle").snap.one(.image).name, "circle")
    }
}
