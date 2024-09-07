@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
typealias _AnyGesture = SameBaseElement<AnyGesture<Never>>

@available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
@available(tvOS, unavailable)
typealias _DragGesture = SameTypeElement<DragGesture>

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
typealias _ExclusiveGesture = SameBaseElement<ExclusiveGesture<Never,Never>>

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
typealias _GestureStateGesture = SameBaseElement<GestureStateGesture<Never,Never>>

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 14.0, *)
typealias _LongPressGesture = SameTypeElement<LongPressGesture>

@available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "MagnifyGesture")
@available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "MagnifyGesture")
@available(watchOS, unavailable)
@available(tvOS, unavailable)
@available(visionOS, introduced: 1.0, deprecated: 100000.0, renamed: "MagnifyGesture")
typealias _MagnificationGesture = SameTypeElement<MagnificationGesture>

@available(iOS 17.0, macOS 14.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
typealias _MagnifyGesture = SameTypeElement<MagnifyGesture>

@available(iOS 17.0, macOS 14.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
typealias _RotateGesture = SameTypeElement<RotateGesture>

@available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "RotateGesture")
@available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "RotateGesture")
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, introduced: 1.0, deprecated: 100000.0, renamed: "RotateGesture")
typealias _RotationGesture = SameTypeElement<RotationGesture>

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
typealias _SequenceGesture = SameBaseElement<SequenceGesture<Never,Never>>

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
typealias _SimultaneousGesture = SameBaseElement<SimultaneousGesture<Never,Never>>

@available(visionOS 1.0, iOS 18.0, macOS 15.0, watchOS 11.0, *)
@available(tvOS, unavailable)
typealias _SpatialEventGesture = SameTypeElement<SpatialEventGesture>

@available(iOS 16.0, macOS 13.0, watchOS 9.0, visionOS 1.0, *)
@available(tvOS, unavailable)
typealias _SpatialTapGesture = SameTypeElement<SpatialTapGesture>

@available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
typealias _TapGesture = SameTypeElement<TapGesture>

@available(macOS 15.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
@available(visionOS, unavailable)
typealias _WindowDragGesture = SameTypeElement<WindowDragGesture>