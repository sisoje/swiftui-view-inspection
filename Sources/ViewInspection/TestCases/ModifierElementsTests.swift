import SwiftUI
import XCTest

final class ModifierElementsTests: XCTestCase {}

@MainActor extension ModifierElementsTests {
    func testRefreshable() async {
        var x = 0
        await EmptyView().refreshable { x = 1 }.reflectionSnapshot.refreshableModifiers[0].doRefresh()
        XCTAssert(x == 1)
    }

    func testTask() async {
        var x = 0
        await EmptyView().task { x = 1 }.reflectionSnapshot.taskModifiers[0].doTask()
        XCTAssert(x == 1)
    }

    func testOnAppear() {
        var x = 0
        EmptyView().onAppear { x = 1 }.reflectionSnapshot.onAppearModifiers[0].doOnAppear()
        XCTAssert(x == 1)
    }

    func testOnTap() {
        var x = 0
        EmptyView().onTapGesture { x = 1 }.reflectionSnapshot.onTapModifiers[0].doTap()
        XCTAssert(x == 1)
    }
}
