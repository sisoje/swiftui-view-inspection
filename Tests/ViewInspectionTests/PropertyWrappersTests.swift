import SwiftUI
import XCTest
@testable import ViewInspection

final class PropertyWrappersTests: XCTestCase {}

@MainActor extension PropertyWrappersTests {
    func testEnvironment() {
        struct Dummy: View {
            @Environment(\.colorScheme) private var colorScheme
            let body = EmptyView()
        }
        let t = Dummy().snap.all(.environment)
        XCTAssertEqual(t.count, 2)
        XCTAssert(t[1].node.parent === t[0].node)
    }

    func testState() throws {
        struct Dummy: View {
            @State private var x = 0
            let body = EmptyView()
        }
        try Dummy().snap.one(.state)
    }

    func testBinding() throws {
        struct Dummy: View {
            @Binding var x: Int
            let body = EmptyView()
        }
        try Dummy(x: .constant(1)).snap.one(.binding)
    }
}
