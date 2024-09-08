import SwiftUI

final class DummyDelegate: NSObject, UIApplicationDelegate {}

final class DummyOnservableOnject: ObservableObject {}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@Observable final class DummyOnservable {}
