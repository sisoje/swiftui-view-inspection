import SwiftUI
@testable import ViewInspection
import XCTest

final class ModifierElementsTests: XCTestCase {}

@MainActor extension ModifierElementsTests {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Refreshable() async throws {
        var x = 0
        try await EmptyView().refreshable { x = 1 }.snap.one(.Refreshable).doRefresh()
        XCTAssert(x == 1)
    }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Task() async throws {
        var x = 0
        try await EmptyView().task { x = 1 }.snap.one(.Task).doTask()
        XCTAssert(x == 1)
    }

    @available(tvOS 16.0, *)
    func test_OnTap() throws {
        var x = 0
        try EmptyView().onTapGesture { x = 1 }.snap.one(.OnTap).doTap()
        XCTAssert(x == 1)
    }
}
