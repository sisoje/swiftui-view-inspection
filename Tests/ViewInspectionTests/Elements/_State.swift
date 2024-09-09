import SwiftUI
import XCTest
@testable import ViewInspection

@MainActor final class Test_State: XCTestCase {
    func test_State() throws {
        struct Dummy: View {
            @State private var x = 0
            let body = EmptyView()
        }
        try Dummy().snap.one(.state)
    }
}