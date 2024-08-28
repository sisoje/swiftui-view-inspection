@testable import ViewHosting
import XCTest

class HostedViewsTestsBase: XCTestCase {
    @MainActor override func setUp() async throws {
        guard ViewHostingApp.hostView != nil else {
            throw XCTSkip("stateful view need hosting")
        }
    }
}
