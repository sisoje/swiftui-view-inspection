import SwiftUI

public struct ViewHostingApp: App {
    public init() {}
    @State private var view: any View = EmptyView()
    
    static var hostView: ((() -> any View) -> Void)!

    public var body: some Scene {
        let _ = Self.hostView = { content in
            view = content().id(UUID())
        }
        WindowGroup {
            AnyView(view)
        }
    }
}
