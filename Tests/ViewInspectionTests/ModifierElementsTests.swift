import SwiftUI
@testable import ViewInspection
import XCTest

final class ModifierElementsTests: XCTestCase {}

@MainActor extension ModifierElementsTests {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Refreshable() async {
        var x = 0
        await EmptyView().refreshable { x = 1 }.inspection.oneElement(TestElement.Modifier._Refreshable.self).doRefresh()
        XCTAssert(x == 1)
    }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Task() async {
        var x = 0
        await EmptyView().task { x = 1 }.inspection.oneElement(TestElement.Modifier._Task.self).doTask()
        XCTAssert(x == 1)
    }

    func test_OnAppear() {
        var x = 0
        EmptyView().onAppear { x = 1 }.inspection.oneElement(TestElement.Modifier._OnAppear.self).doOnAppear()
        XCTAssert(x == 1)
    }
    
    func test_OnDisappear() {
        var x = 0
        EmptyView().onDisappear { x = 1 }.inspection.oneElement(TestElement.Modifier._OnDisappear.self).doOnDisappear()
        XCTAssert(x == 1)
    }

    @available(tvOS 16.0, *)
    func test_OnTap() {
        var x = 0
        EmptyView().onTapGesture { x = 1 }.inspection.oneElement(TestElement.Modifier._OnTap.self).doTap()
        XCTAssert(x == 1)
    }
}
