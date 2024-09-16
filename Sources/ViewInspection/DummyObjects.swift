import SwiftUI

#if canImport(UIKit) && !os(watchOS)
    final class UIDummyDelegate: NSObject, UIApplicationDelegate {}
#endif

#if canImport(AppKit)
    final class NSDummyDelegate: NSObject, NSApplicationDelegate {}
#endif

enum DummyEnum {
    case case0
    case case1
}
