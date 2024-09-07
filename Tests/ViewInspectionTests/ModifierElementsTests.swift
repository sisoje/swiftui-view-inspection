import SwiftUI
@testable import ViewInspection
import XCTest

final class ModifierElementsTests: XCTestCase {}

@MainActor extension ModifierElementsTests {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Refreshable() async {
        var x = 0
        let v = EmptyView().refreshable { x = 1 }.snapshot
        XCTAssertEqual(v.allNodes.count, 4)
        await v.oneElement(TestElement.Modifier._Refreshable.self).doRefresh()
        XCTAssert(x == 1)
    }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    func test_Task() async {
        var x = 0
        let v = EmptyView().task { x = 1 }.snapshot
        XCTAssertEqual(v.allNodes.count, 6)
        await v.oneElement(TestElement.Modifier._Task.self).doTask()
        XCTAssert(x == 1)
    }

    func test_OnAppear() {
        var x = 0
        let v = EmptyView().onAppear { x = 1 }.snapshot
        XCTAssertEqual(v.allNodes.count, 6)
        v.oneElement(TestElement.Modifier._OnAppear.self).doOnAppear()
        XCTAssert(x == 1)
    }
    
    func test_OnDisappear() {
        var x = 0
        let v = EmptyView().onDisappear { x = 1 }.snapshot
        XCTAssertEqual(v.allNodes.count, 6)
        v.oneElement(TestElement.Modifier._OnDisappear.self).doOnDisappear()
        XCTAssert(x == 1)
    }

    @available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
    func test_OnTap() {
        var x = 0
        let v = EmptyView().onTapGesture { x = 1 }.snapshot
        XCTAssertEqual(v.allNodes.count, 13)
        v.oneElement(TestElement.Modifier._OnTap.self).doTap()
        XCTAssert(x == 1)
        XCTAssertEqual(
            v.allElements(TestElement.Gesture._TapGesture.self).count,
            1
        )
    }
}
