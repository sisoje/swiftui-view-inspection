import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_onTapGesture: XCTestCase {
    @available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
    func test_onTapGesture() throws {
        var x = 0
        try EmptyView().onTapGesture { x = 1 }.snap.one(.onTapGesture).tap()
        XCTAssert(x == 1)
    }
}
