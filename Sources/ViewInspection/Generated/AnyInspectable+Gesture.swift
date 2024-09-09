extension AnyInspectable {
static var anyGesture: AnyInspectable<InspectableType._AnyGesture> { .some }

@available(tvOS, unavailable)
static var dragGesture: AnyInspectable<InspectableType._DragGesture> { .some }

static var exclusiveGesture: AnyInspectable<InspectableType._ExclusiveGesture> { .some }

static var gestureStateGesture: AnyInspectable<InspectableType._GestureStateGesture> { .some }

@available(tvOS 14.0, *)
static var longPressGesture: AnyInspectable<InspectableType._LongPressGesture> { .some }

@available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "MagnifyGesture")
@available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "MagnifyGesture")
@available(watchOS, unavailable)
@available(tvOS, unavailable)
@available(visionOS, introduced: 1.0, deprecated: 100000.0, renamed: "MagnifyGesture")
static var magnificationGesture: AnyInspectable<InspectableType._MagnificationGesture> { .some }

@available(iOS 17.0, macOS 14.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
static var magnifyGesture: AnyInspectable<InspectableType._MagnifyGesture> { .some }

@available(iOS 17.0, macOS 14.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
static var rotateGesture: AnyInspectable<InspectableType._RotateGesture> { .some }

@available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "RotateGesture")
@available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "RotateGesture")
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, introduced: 1.0, deprecated: 100000.0, renamed: "RotateGesture")
static var rotationGesture: AnyInspectable<InspectableType._RotationGesture> { .some }

static var sequenceGesture: AnyInspectable<InspectableType._SequenceGesture> { .some }

static var simultaneousGesture: AnyInspectable<InspectableType._SimultaneousGesture> { .some }

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, watchOS 11.0, *)
@available(tvOS, unavailable)
static var spatialEventGesture: AnyInspectable<InspectableType._SpatialEventGesture> { .some }
#endif

@available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
@available(tvOS, unavailable)
static var spatialTapGesture: AnyInspectable<InspectableType._SpatialTapGesture> { .some }

@available(tvOS 16.0, *)
static var tapGesture: AnyInspectable<InspectableType._TapGesture> { .some }

#if swift(>=6.0)
@available(macOS 15.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
@available(visionOS, unavailable)
static var windowDragGesture: AnyInspectable<InspectableType._WindowDragGesture> { .some }
#endif
}