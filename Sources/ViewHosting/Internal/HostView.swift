import SwiftUI

extension ViewHostingApp {
    nonisolated(unsafe) static var hostView: ((() -> any View) -> Void)!
}
