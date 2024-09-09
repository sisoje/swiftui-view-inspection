extension AnyInspectable {
static var accessibilityFocusState: AnyInspectable<InspectableType._AccessibilityFocusState> { .some }

static var appStorage: AnyInspectable<InspectableType._AppStorage> { .some }

static var binding: AnyInspectable<InspectableType._Binding> { .some }

static var environment: AnyInspectable<InspectableType._Environment> { .some }

static var environmentObject: AnyInspectable<InspectableType._EnvironmentObject> { .some }

static var fetchRequest: AnyInspectable<InspectableType._FetchRequest> { .some }

static var focusedBinding: AnyInspectable<InspectableType._FocusedBinding> { .some }

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
static var focusedObject: AnyInspectable<InspectableType._FocusedObject> { .some }

static var focusedValue: AnyInspectable<InspectableType._FocusedValue> { .some }

static var focusState: AnyInspectable<InspectableType._FocusState> { .some }

static var gestureState: AnyInspectable<InspectableType._GestureState> { .some }

static var namespace: AnyInspectable<InspectableType._Namespace> { .some }

#if os(macOS)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
static var nSApplicationDelegateAdaptor: AnyInspectable<InspectableType._NSApplicationDelegateAdaptor> { .some }
#endif

static var observedObject: AnyInspectable<InspectableType._ObservedObject> { .some }

static var scaledMetric: AnyInspectable<InspectableType._ScaledMetric> { .some }

static var sceneStorage: AnyInspectable<InspectableType._SceneStorage> { .some }

static var sectionedFetchRequest: AnyInspectable<InspectableType._SectionedFetchRequest> { .some }

static var state: AnyInspectable<InspectableType._State> { .some }

static var stateObject: AnyInspectable<InspectableType._StateObject> { .some }

#if os(iOS) || os(tvOS)
@available(macOS, unavailable)
@available(watchOS, unavailable)
static var uIApplicationDelegateAdaptor: AnyInspectable<InspectableType._UIApplicationDelegateAdaptor> { .some }
#endif
}