import SwiftUI

extension InspectableType {
typealias _AccessibilityFocusState = SameBaseElement<AccessibilityFocusState<Int>>

typealias _AppStorage = SameBaseElement<AppStorage<Never>>

typealias _Binding = SameBaseElement<Binding<Never>>

typealias _Environment = SameBaseElement<Environment<Never>>

typealias _EnvironmentObject = SameBaseElement<EnvironmentObject<DummyOnservableOnject>>

typealias _FetchRequest = SameBaseElement<FetchRequest<NSDictionary>>

typealias _FocusedBinding = SameBaseElement<FocusedBinding<Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _FocusedObject = SameBaseElement<FocusedObject<DummyOnservableOnject>>

typealias _FocusedValue = SameBaseElement<FocusedValue<Never>>

typealias _FocusState = SameBaseElement<FocusState<Int>>

typealias _GestureState = SameBaseElement<GestureState<Never>>

typealias _Namespace = SameBaseElement<Namespace>

#if os(macOS)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
typealias _NSApplicationDelegateAdaptor = SameBaseElement<NSApplicationDelegateAdaptor<NSDummyDelegate>>
#endif

typealias _ObservedObject = SameBaseElement<ObservedObject<DummyOnservableOnject>>

typealias _ScaledMetric = SameBaseElement<ScaledMetric<Double>>

typealias _SceneStorage = SameBaseElement<SceneStorage<Never>>

typealias _SectionedFetchRequest = SameBaseElement<SectionedFetchRequest<Int,NSDictionary>>

typealias _State = SameBaseElement<State<Never>>

typealias _StateObject = SameBaseElement<StateObject<DummyOnservableOnject>>

#if os(iOS) || os(tvOS)
@available(macOS, unavailable)
@available(watchOS, unavailable)
typealias _UIApplicationDelegateAdaptor = SameBaseElement<UIApplicationDelegateAdaptor<UIDummyDelegate>>
#endif
}