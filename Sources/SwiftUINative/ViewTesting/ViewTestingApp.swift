import SwiftUI

public struct ViewTestingApp: App {
    public init() {}
    @State private var view: any View = EmptyView()

    public var body: some Scene {
        let _ = ViewHostingService.hostView = { builder in
            view = builder().id(UUID())
        }
        WindowGroup {
            AnyView(view)
        }
    }
}
