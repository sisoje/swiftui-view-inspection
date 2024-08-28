import SwiftUI
import XCTest

final class PropertyWrappersTests: XCTestCase {}

@MainActor extension PropertyWrappersTests {
    func testEnvironment() {
        struct Dummy: View {
            @Environment(\.dismiss) var dismiss
            let body = EmptyView()
        }
        let t = Dummy().reflectionTree.environments
        XCTAssertEqual(t.count, 2)
        XCTAssert(t[1].root.parent === t[0].root)
    }
    
    func testState() {
        struct Dummy: View {
            @Environment(\.locale) var locale
            @State var x = 0
            let body = EmptyView()
        }
        XCTAssertEqual(Dummy().reflectionTree.states.count, 1)
    }
    
    func testBinding() {
        struct Dummy: View {
            @Binding var x: Int
            let body = EmptyView()
        }
        XCTAssertEqual(Dummy(x: .constant(1)).reflectionTree.bindings.count, 1)
    }
}