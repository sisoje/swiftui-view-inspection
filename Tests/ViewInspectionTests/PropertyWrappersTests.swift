import SwiftUI
import XCTest
@testable import ViewInspection

final class PropertyWrappersTests: XCTestCase {}

@MainActor extension PropertyWrappersTests {
    func testEnvironment() {
        struct Dummy: View {
            @Environment(\.dismiss) private var dismiss
            let body = EmptyView()
        }
        let t = Dummy().reflectionSnapshot.environments
        XCTAssertEqual(t.count, 2)
        XCTAssert(t[1].node.parent === t[0].node)
    }

    func testState() {
        struct Dummy: View {
            @State private var x = 0
            let body = EmptyView()
        }
        XCTAssertEqual(Dummy().reflectionSnapshot.states.count, 1)
    }

    func testBinding() {
        struct Dummy: View {
            @Binding var x: Int
            let body = EmptyView()
        }
        XCTAssertEqual(Dummy(x: .constant(1)).reflectionSnapshot.bindings.count, 1)
    }
}
