extension AnyInspectable {
@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
static var accessibilityFocusState: AnyInspectable<InspectableType._AccessibilityFocusState> { .some }

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
static var appStorage: AnyInspectable<InspectableType._AppStorage> { .some }

static var binding: AnyInspectable<InspectableType._Binding> { .some }

static var environment: AnyInspectable<InspectableType._Environment> { .some }

static var environmentObject: AnyInspectable<InspectableType._EnvironmentObject> { .some }

static var fetchRequest: AnyInspectable<InspectableType._FetchRequest> { .some }

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
static var focusedBinding: AnyInspectable<InspectableType._FocusedBinding> { .some }

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
static var focusedObject: AnyInspectable<InspectableType._FocusedObject> { .some }

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
static var focusedValue: AnyInspectable<InspectableType._FocusedValue> { .some }

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
static var focusState: AnyInspectable<InspectableType._FocusState> { .some }

static var gestureState: AnyInspectable<InspectableType._GestureState> { .some }

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
static var namespace: AnyInspectable<InspectableType._Namespace> { .some }

#if os(macOS)
@available(macOS 11.0, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
static var nSApplicationDelegateAdaptor: AnyInspectable<InspectableType._NSApplicationDelegateAdaptor> { .some }
#endif

static var observedObject: AnyInspectable<InspectableType._ObservedObject> { .some }

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
static var scaledMetric: AnyInspectable<InspectableType._ScaledMetric> { .some }

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
static var sceneStorage: AnyInspectable<InspectableType._SceneStorage> { .some }

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
static var sectionedFetchRequest: AnyInspectable<InspectableType._SectionedFetchRequest> { .some }

static var state: AnyInspectable<InspectableType._State> { .some }

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
static var stateObject: AnyInspectable<InspectableType._StateObject> { .some }

#if os(iOS) || os(tvOS)
@available(iOS 14.0, tvOS 14.0, *)
@available(macOS, unavailable)
@available(watchOS, unavailable)
static var uIApplicationDelegateAdaptor: AnyInspectable<InspectableType._UIApplicationDelegateAdaptor> { .some }
#endif
}