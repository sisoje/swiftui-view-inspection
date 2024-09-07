import SwiftUI
import XCTest
@testable import ViewInspection

final class ModifierElementsTests: XCTestCase {}

@MainActor extension ModifierElementsTests {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Refreshable() async {
        var x = 0
        await EmptyView().refreshable { x = 1 }.snapshot.oneElement(TestElement.Modifier._Refreshable.self).doRefresh()
        XCTAssert(x == 1)
    }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Task() async {
        var x = 0
        await EmptyView().task { x = 1 }.snapshot.oneElement(TestElement.Modifier._Task.self).doTask()
        XCTAssert(x == 1)
    }

    func test_OnAppear() {
        var x = 0
        EmptyView().onAppear { x = 1 }.snapshot.oneElement(TestElement.Modifier._OnAppear.self).doOnAppear()
        XCTAssert(x == 1)
    }

    @available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
    func test_OnTap() {
        var x = 0
        EmptyView().onTapGesture { x = 1 }.snapshot.oneElement(TestElement.Modifier._OnTap.self).doTap()
        XCTAssert(x == 1)
    }
}
