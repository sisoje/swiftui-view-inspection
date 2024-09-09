import SwiftUI
@testable import ViewInspection
import XCTest

final class ModifierElementsTests: XCTestCase {}

@MainActor extension ModifierElementsTests {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Refreshable() async throws {
        var x = 0
        try await EmptyView().refreshable { x = 1 }.snap.one(.refreshable).refresh()
        XCTAssert(x == 1)
    }

    @available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
    func test_OnTap() throws {
        var x = 0
        try EmptyView().onTapGesture { x = 1 }.snap.one(.onTap).tap()
        XCTAssert(x == 1)
    }
}
