import SwiftUI
@testable import ViewInspection
import XCTest

@MainActor final class Test_AppStorage: XCTestCase {
    func test_AppStorage() throws {
        struct Dummy: View {
            static let key = UUID().uuidString
            @AppStorage(Self.key) private var testValue = "defaultValue"
            let body = EmptyView()
        }
        let appStorage = try Dummy().snap.one(.appStorage).tryCast(AppStorage<String>.self)
        XCTAssertEqual(appStorage.wrappedValue, "defaultValue")

        // Simulate changing the value
        UserDefaults.standard.set("newValue", forKey: Dummy.key)
        XCTAssertEqual(appStorage.wrappedValue, "newValue")
    }
}
