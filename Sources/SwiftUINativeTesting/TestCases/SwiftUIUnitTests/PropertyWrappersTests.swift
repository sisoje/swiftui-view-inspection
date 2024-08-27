import SwiftUI
import XCTest

final class PropertyWrappersTests: XCTestCase {}

@MainActor extension PropertyWrappersTests {
    func testEnvironmentObject() {
        struct Dummy: View {
            class X: ObservableObject {}
            @EnvironmentObject var x: X
            let body = EmptyView()
        }
        let t = Dummy().reflectionSnapshot.environmentObjects
        XCTAssertEqual(t.count, 1)
    }
    
    func testEnvironment() {
        struct Dummy: View {
            @Environment(\.dismiss) var dismiss
            let body = EmptyView()
        }
        let t = Dummy().reflectionSnapshot.environments
        XCTAssertEqual(t.count, 2)
        XCTAssert(t[1].node.parent === t[0].node)
    }
    
    func testState() {
        struct Dummy: View {
            @Environment(\.locale) var locale
            @State var x = 0
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
