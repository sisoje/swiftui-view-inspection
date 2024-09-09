import SwiftUI

extension InspectableType {
typealias _AnyGesture = SameBaseElement<AnyGesture<Never>>

@available(tvOS, unavailable)
typealias _DragGesture = SameBaseElement<DragGesture>

typealias _ExclusiveGesture = SameBaseElement<ExclusiveGesture<Never,Never>>

typealias _GestureStateGesture = SameBaseElement<GestureStateGesture<Never,Never>>

@available(tvOS 14.0, *)
typealias _LongPressGesture = SameBaseElement<LongPressGesture>

@available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "MagnifyGesture")
@available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "MagnifyGesture")
@available(watchOS, unavailable)
@available(tvOS, unavailable)
@available(visionOS, introduced: 1.0, deprecated: 100000.0, renamed: "MagnifyGesture")
typealias _MagnificationGesture = SameBaseElement<MagnificationGesture>

@available(iOS 17.0, macOS 14.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
typealias _MagnifyGesture = SameBaseElement<MagnifyGesture>

@available(iOS 17.0, macOS 14.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
typealias _RotateGesture = SameBaseElement<RotateGesture>

@available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "RotateGesture")
@available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "RotateGesture")
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, introduced: 1.0, deprecated: 100000.0, renamed: "RotateGesture")
typealias _RotationGesture = SameBaseElement<RotationGesture>

typealias _SequenceGesture = SameBaseElement<SequenceGesture<Never,Never>>

typealias _SimultaneousGesture = SameBaseElement<SimultaneousGesture<Never,Never>>

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, watchOS 11.0, *)
@available(tvOS, unavailable)
typealias _SpatialEventGesture = SameBaseElement<SpatialEventGesture>
#endif

@available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
@available(tvOS, unavailable)
typealias _SpatialTapGesture = SameBaseElement<SpatialTapGesture>

@available(tvOS 16.0, *)
typealias _TapGesture = SameBaseElement<TapGesture>

#if swift(>=6.0)
@available(macOS 15.0, *)
@available(iOS, unavailable)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
@available(visionOS, unavailable)
typealias _WindowDragGesture = SameBaseElement<WindowDragGesture>
#endif
}