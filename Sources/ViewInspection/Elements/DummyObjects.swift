import SwiftUI

@available(iOS 14.0, tvOS 14.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
final class DummyDelegate: NSObject, UIApplicationDelegate {}

final class DummyOnservableOnject: ObservableObject {}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@Observable final class DummyOnservable {}
