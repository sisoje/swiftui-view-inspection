import SwiftUI

public struct ViewHostingApp: App {
    public init() {}
    @State private var view: any View = EmptyView()

    public var body: some Scene {
        let _ = Self.hostView = { content in
            view = content().id(UUID())
        }
        WindowGroup {
            AnyView(view)
        }
    }
}
