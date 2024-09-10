import SwiftUI

#if os(iOS) || os(tvOS)
    @available(iOS 14.0, tvOS 14.0, *)
    final class UIDummyDelegate: NSObject, UIApplicationDelegate {}
#endif

#if os(macOS)
    @available(macOS 11.0, *)
    final class NSDummyDelegate: NSObject, NSApplicationDelegate {}
#endif

final class DummyOnservableOnject: ObservableObject {}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@Observable final class DummyOnservable {}

enum DummyEnum {
    case case0
    case case1
}
