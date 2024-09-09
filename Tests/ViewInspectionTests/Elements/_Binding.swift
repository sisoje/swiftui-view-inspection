import SwiftUI
import XCTest
@testable import ViewInspection

@MainActor final class Test_Binding: XCTestCase {
    func test_Binding() throws {
        struct Dummy: View {
            @Binding var x: Int
            let body = EmptyView()
        }
        try Dummy(x: .constant(1)).snap.one(.binding)
    }
}
