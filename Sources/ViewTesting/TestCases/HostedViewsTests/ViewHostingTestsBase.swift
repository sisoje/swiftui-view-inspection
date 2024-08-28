@testable import ViewHosting
import XCTest

class HostedViewsTestsBase: XCTestCase {
    @MainActor override func setUp() async throws {
        guard ViewHostingService.hostView != nil else {
            throw XCTSkip("stateful view need hosting")
        }
    }
}
