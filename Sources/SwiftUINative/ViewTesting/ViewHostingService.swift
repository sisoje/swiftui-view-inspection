import SwiftUI

enum ViewHostingService {
    @MainActor static var hostView: ((() -> any View) -> Void)!
}
