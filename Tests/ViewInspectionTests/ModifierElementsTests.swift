import SwiftUI
import XCTest
@testable import ViewInspection

final class ModifierElementsTests: XCTestCase {}

@MainActor extension ModifierElementsTests {
    func testRefreshable() async {
        var x = 0
        await EmptyView().refreshable { x = 1 }.reflectionSnapshot.oneElement(TestElement.Modifier._Refreshable.self).doRefresh()
        XCTAssert(x == 1)
    }

    func testTask() async {
        var x = 0
        await EmptyView().task { x = 1 }.reflectionSnapshot.oneElement(TestElement.Modifier._Task.self).doTask()
        XCTAssert(x == 1)
    }

    func testOnAppear() {
        var x = 0
        EmptyView().onAppear { x = 1 }.reflectionSnapshot.oneElement(TestElement.Modifier._OnAppear.self).doOnAppear()
        XCTAssert(x == 1)
    }

    func testOnTap() {
        var x = 0
        EmptyView().onTapGesture { x = 1 }.reflectionSnapshot.oneElement(TestElement.Modifier._OnTap.self).doTap()
        XCTAssert(x == 1)
    }
}
