import SwiftUI

#if os(iOS) || os(tvOS)
    @available(iOS 14.0, tvOS 14.0, *)
    final class UIDummyDelegate: NSObject, UIApplicationDelegate {}
#endif

#if os(macOS)
    @available(macOS 11.0, *)
    final class NSDummyDelegate: NSObject, NSApplicationDelegate {}
#endif

enum DummyEnum {
    case case0
    case case1
}
