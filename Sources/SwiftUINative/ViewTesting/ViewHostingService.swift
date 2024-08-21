import SwiftUI

enum ViewHostingService {
    @MainActor static var hostView: (@MainActor (@MainActor () -> any View) -> Void)!
}
