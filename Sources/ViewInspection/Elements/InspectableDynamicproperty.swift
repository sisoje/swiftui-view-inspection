import SwiftUI

enum InspectableDynamicproperty {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    typealias _AccessibilityFocusState = SameBaseElement<AccessibilityFocusState<Int>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _AppStorage = SameBaseElement<AppStorage<Never>>

    typealias _Binding = SameBaseElement<Binding<Never>>

    typealias _Environment = SameBaseElement<Environment<Never>>

    typealias _EnvironmentObject = SameBaseElement<EnvironmentObject<DummyOnservableOnject>>

    typealias _FetchRequest = SameBaseElement<FetchRequest<NSDictionary>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _FocusedBinding = SameBaseElement<FocusedBinding<Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _FocusedObject = SameBaseElement<FocusedObject<DummyOnservableOnject>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _FocusedValue = SameBaseElement<FocusedValue<Never>>

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    typealias _FocusState = SameBaseElement<FocusState<Int>>

    typealias _GestureState = SameBaseElement<GestureState<Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _Namespace = SameTypeElement<Namespace>

    typealias _ObservedObject = SameBaseElement<ObservedObject<DummyOnservableOnject>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _ScaledMetric = SameBaseElement<ScaledMetric<Double>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _SceneStorage = SameBaseElement<SceneStorage<Never>>

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    typealias _SectionedFetchRequest = SameBaseElement<SectionedFetchRequest<Int,NSDictionary>>

    typealias _State = SameBaseElement<State<Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _StateObject = SameBaseElement<StateObject<DummyOnservableOnject>>

#if canImport(UIKit)
    @available(iOS 14.0, tvOS 14.0, *)
    @available(macOS, unavailable)
    @available(watchOS, unavailable)
    typealias _UIApplicationDelegateAdaptor = SameBaseElement<UIApplicationDelegateAdaptor<DummyDelegate>>
#endif
}
