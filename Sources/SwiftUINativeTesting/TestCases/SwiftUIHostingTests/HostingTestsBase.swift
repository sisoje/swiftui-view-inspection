@testable import SwiftUINative
import XCTest

class HostingTestsBase: XCTestCase {
    @MainActor override func setUp() async throws {
        guard ViewHostingService.hostView != nil else {
            throw XCTSkip("stateful view need hosting")
        }
    }
}
