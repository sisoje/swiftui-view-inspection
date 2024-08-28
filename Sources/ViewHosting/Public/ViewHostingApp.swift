import SwiftUI

public struct ViewHostingApp: App {
    public init() {}
    @State private var view: any View = EmptyView()

    public var body: some Scene {
        let _ = ViewHostingService.hostView = { viewBuilder in
            view = viewBuilder().id(UUID())
        }
        WindowGroup {
            AnyView(view)
        }
    }
}
