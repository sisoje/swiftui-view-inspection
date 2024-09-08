import SwiftUI

enum Inspectable<T: ReflectionElement> {
    typealias Element = T
    case some
}

// MARK: - views

extension Inspectable {
    static var AngularGradient: Inspectable<InspectableView._AngularGradient> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var AnyShape: Inspectable<InspectableView._AnyShape> { .some }

    static var AnyView: Inspectable<InspectableView._AnyView> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    static var AsyncImage: Inspectable<InspectableView._AsyncImage> { .some }

    static var Button: Inspectable<InspectableView._Button> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    static var ButtonBorderShape: Inspectable<InspectableView._ButtonBorderShape> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    static var Canvas: Inspectable<InspectableView._Canvas> { .some }

    static var Capsule: Inspectable<InspectableView._Capsule> { .some }

    static var Circle: Inspectable<InspectableView._Circle> { .some }

    static var Color: Inspectable<InspectableView._Color> { .some }

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var ColorPicker: Inspectable<InspectableView._ColorPicker> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var ContainerRelativeShape: Inspectable<InspectableView._ContainerRelativeShape> { .some }

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    static var ContentUnavailableView: Inspectable<InspectableView._ContentUnavailableView> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 17.0, *)
    @available(watchOS, unavailable)
    static var ControlGroup: Inspectable<InspectableView._ControlGroup> { .some }

    @available(watchOS 10.0, *)
    @available(tvOS, unavailable)
    static var DatePicker: Inspectable<InspectableView._DatePicker> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var DefaultDateProgressLabel: Inspectable<InspectableView._DefaultDateProgressLabel> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, visionOS 2.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var DefaultDocumentGroupLaunchActions: Inspectable<InspectableView._DefaultDocumentGroupLaunchActions> { .some }
    #endif

    @available(macOS 14.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    static var DefaultSettingsLinkLabel: Inspectable<InspectableView._DefaultSettingsLinkLabel> { .some }

    @available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
    @available(tvOS, unavailable)
    static var DefaultShareLinkLabel: Inspectable<InspectableView._DefaultShareLinkLabel> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    static var DefaultTabLabel: Inspectable<InspectableView._DefaultTabLabel> { .some }
    #endif

    #if swift(>=6.0)
    @available(macOS 15.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    static var DefaultWindowVisibilityToggleLabel: Inspectable<InspectableView._DefaultWindowVisibilityToggleLabel> { .some }
    #endif

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var DisclosureGroup: Inspectable<InspectableView._DisclosureGroup> { .some }

    static var Divider: Inspectable<InspectableView._Divider> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, *)
    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(macCatalyst, unavailable)
    @available(visionOS, unavailable)
    @available(macCatalyst, unavailable)
    static var DocumentLaunchView: Inspectable<InspectableView._DocumentLaunchView> { .some }
    #endif

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var EditableCollectionContent: Inspectable<InspectableView._EditableCollectionContent> { .some }

    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var EditButton: Inspectable<InspectableView._EditButton> { .some }

    static var Ellipse: Inspectable<InspectableView._Ellipse> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    static var EllipticalGradient: Inspectable<InspectableView._EllipticalGradient> { .some }

    static var EmptyView: Inspectable<InspectableView._EmptyView> { .some }

    static var EquatableView: Inspectable<InspectableView._EquatableView> { .some }

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    static var FillShapeView: Inspectable<InspectableView._FillShapeView> { .some }

    static var ForEach: Inspectable<InspectableView._ForEach> { .some }

    static var Form: Inspectable<InspectableView._Form> { .some }

    @available(iOS 16.0, macOS 13.0, watchOS 7.0, *)
    @available(tvOS, unavailable)
    static var Gauge: Inspectable<InspectableView._Gauge> { .some }

    static var GeometryReader: Inspectable<InspectableView._GeometryReader> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var Grid: Inspectable<InspectableView._Grid> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var GridRow: Inspectable<InspectableView._GridRow> { .some }

    static var Group: Inspectable<InspectableView._Group> { .some }

    @available(iOS 14.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var GroupBox: Inspectable<InspectableView._GroupBox> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    static var GroupElementsOfContent: Inspectable<InspectableView._GroupElementsOfContent> { .some }
    #endif

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    static var GroupSectionsOfContent: Inspectable<InspectableView._GroupSectionsOfContent> { .some }
    #endif

    @available(macOS 14.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var HelpLink: Inspectable<InspectableView._HelpLink> { .some }

    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    static var HSplitView: Inspectable<InspectableView._HSplitView> { .some }

    static var HStack: Inspectable<InspectableView._HStack> { .some }

    static var Image: Inspectable<InspectableView._Image> { .some }

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    static var KeyframeAnimator: Inspectable<InspectableView._KeyframeAnimator> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var Label: Inspectable<InspectableView._Label> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var LabeledContent: Inspectable<InspectableView._LabeledContent> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 17.0, *)
    @available(watchOS, unavailable)
    static var LabeledControlGroupContent: Inspectable<InspectableView._LabeledControlGroupContent> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var LabeledToolbarItemGroupContent: Inspectable<InspectableView._LabeledToolbarItemGroupContent> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var LazyHGrid: Inspectable<InspectableView._LazyHGrid> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var LazyHStack: Inspectable<InspectableView._LazyHStack> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var LazyVGrid: Inspectable<InspectableView._LazyVGrid> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var LazyVStack: Inspectable<InspectableView._LazyVStack> { .some }

    static var LinearGradient: Inspectable<InspectableView._LinearGradient> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var Link: Inspectable<InspectableView._Link> { .some }

    static var List: Inspectable<InspectableView._List> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 17.0, *)
    @available(watchOS, unavailable)
    static var Menu: Inspectable<InspectableView._Menu> { .some }

    @available(iOS, unavailable)
    @available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Use `Menu` instead.")
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    static var MenuButton: Inspectable<InspectableView._MenuButton> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
    static var MeshGradient: Inspectable<InspectableView._MeshGradient> { .some }
    #endif

    static var ModifiedContent: Inspectable<InspectableView._ModifiedContent> { .some }

    @available(iOS 16.0, *)
    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var MultiDatePicker: Inspectable<InspectableView._MultiDatePicker> { .some }

    static var NavigationLink: Inspectable<InspectableView._NavigationLink> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var NavigationSplitView: Inspectable<InspectableView._NavigationSplitView> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var NavigationStack: Inspectable<InspectableView._NavigationStack> { .some }

    @available(iOS, introduced: 13.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
    @available(macOS, introduced: 10.15, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
    @available(tvOS, introduced: 13.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
    @available(watchOS, introduced: 7.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
    @available(visionOS, introduced: 1.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
    static var NavigationView: Inspectable<InspectableView._NavigationView> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, visionOS 2.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var NewDocumentButton: Inspectable<InspectableView._NewDocumentButton> { .some }
    #endif

    static var OffsetShape: Inspectable<InspectableView._OffsetShape> { .some }

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var OutlineGroup: Inspectable<InspectableView._OutlineGroup> { .some }

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var OutlineSubgroupChildren: Inspectable<InspectableView._OutlineSubgroupChildren> { .some }

    @available(iOS 16.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var PasteButton: Inspectable<InspectableView._PasteButton> { .some }

    static var Path: Inspectable<InspectableView._Path> { .some }

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    static var PhaseAnimator: Inspectable<InspectableView._PhaseAnimator> { .some }

    static var Picker: Inspectable<InspectableView._Picker> { .some }

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    static var PlaceholderContentView: Inspectable<InspectableView._PlaceholderContentView> { .some }

    @available(iOS 16.0, macOS 13.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var PresentedWindowContent: Inspectable<InspectableView._PresentedWindowContent> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    static var PreviewModifierContent: Inspectable<InspectableView._PreviewModifierContent> { .some }
    #endif

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var ProgressView: Inspectable<InspectableView._ProgressView> { .some }

    static var RadialGradient: Inspectable<InspectableView._RadialGradient> { .some }

    static var Rectangle: Inspectable<InspectableView._Rectangle> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var RenameButton: Inspectable<InspectableView._RenameButton> { .some }

    static var RotatedShape: Inspectable<InspectableView._RotatedShape> { .some }

    static var RoundedRectangle: Inspectable<InspectableView._RoundedRectangle> { .some }

    static var ScaledShape: Inspectable<InspectableView._ScaledShape> { .some }

    static var ScrollView: Inspectable<InspectableView._ScrollView> { .some }

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    static var ScrollViewReader: Inspectable<InspectableView._ScrollViewReader> { .some }

    static var Section: Inspectable<InspectableView._Section> { .some }

    static var SecureField: Inspectable<InspectableView._SecureField> { .some }

    @available(macOS 14.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    static var SettingsLink: Inspectable<InspectableView._SettingsLink> { .some }

    @available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
    @available(tvOS, unavailable)
    static var ShareLink: Inspectable<InspectableView._ShareLink> { .some }

    @available(tvOS, unavailable)
    static var Slider: Inspectable<InspectableView._Slider> { .some }

    static var Spacer: Inspectable<InspectableView._Spacer> { .some }

    @available(watchOS 9.0, *)
    @available(tvOS, unavailable)
    static var Stepper: Inspectable<InspectableView._Stepper> { .some }

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    static var StrokeBorderShapeView: Inspectable<InspectableView._StrokeBorderShapeView> { .some }

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    static var StrokeShapeView: Inspectable<InspectableView._StrokeShapeView> { .some }

    static var SubscriptionView: Inspectable<InspectableView._SubscriptionView> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    static var Subview: Inspectable<InspectableView._Subview> { .some }
    #endif

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    static var SubviewsCollection: Inspectable<InspectableView._SubviewsCollection> { .some }
    #endif

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    static var SubviewsCollectionSlice: Inspectable<InspectableView._SubviewsCollectionSlice> { .some }
    #endif

    @available(iOS 16.0, macOS 12.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var Table: Inspectable<InspectableView._Table> { .some }

    @available(watchOS 7.0, *)
    static var TabView: Inspectable<InspectableView._TabView> { .some }

    static var Text: Inspectable<InspectableView._Text> { .some }

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    static var TextEditor: Inspectable<InspectableView._TextEditor> { .some }

    static var TextField: Inspectable<InspectableView._TextField> { .some }

    @available(watchOS 9.0, *)
    @available(iOS, unavailable)
    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(visionOS, unavailable)
    static var TextFieldLink: Inspectable<InspectableView._TextFieldLink> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    static var TimelineView: Inspectable<InspectableView._TimelineView> { .some }

    static var Toggle: Inspectable<InspectableView._Toggle> { .some }

    static var TransformedShape: Inspectable<InspectableView._TransformedShape> { .some }

    static var TupleView: Inspectable<InspectableView._TupleView> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var UnevenRoundedRectangle: Inspectable<InspectableView._UnevenRoundedRectangle> { .some }

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    static var ViewThatFits: Inspectable<InspectableView._ViewThatFits> { .some }

    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    static var VSplitView: Inspectable<InspectableView._VSplitView> { .some }

    static var VStack: Inspectable<InspectableView._VStack> { .some }

    #if swift(>=6.0)
    @available(macOS 15.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    static var WindowVisibilityToggle: Inspectable<InspectableView._WindowVisibilityToggle> { .some }
    #endif

    static var ZStack: Inspectable<InspectableView._ZStack> { .some }
}

// MARK: - gestures

extension Inspectable {
    static var AnyGesture: Inspectable<InspectableGesture._AnyGesture> { .some }

    @available(tvOS, unavailable)
    static var DragGesture: Inspectable<InspectableGesture._DragGesture> { .some }

    static var ExclusiveGesture: Inspectable<InspectableGesture._ExclusiveGesture> { .some }

    static var GestureStateGesture: Inspectable<InspectableGesture._GestureStateGesture> { .some }

    @available(tvOS 14.0, *)
    static var LongPressGesture: Inspectable<InspectableGesture._LongPressGesture> { .some }

    @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "MagnifyGesture")
    @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "MagnifyGesture")
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    @available(visionOS, introduced: 1.0, deprecated: 100000.0, renamed: "MagnifyGesture")
    static var MagnificationGesture: Inspectable<InspectableGesture._MagnificationGesture> { .some }

    @available(iOS 17.0, macOS 14.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    static var MagnifyGesture: Inspectable<InspectableGesture._MagnifyGesture> { .some }

    @available(iOS 17.0, macOS 14.0, *)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    static var RotateGesture: Inspectable<InspectableGesture._RotateGesture> { .some }

    @available(iOS, introduced: 13.0, deprecated: 100000.0, renamed: "RotateGesture")
    @available(macOS, introduced: 10.15, deprecated: 100000.0, renamed: "RotateGesture")
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, introduced: 1.0, deprecated: 100000.0, renamed: "RotateGesture")
    static var RotationGesture: Inspectable<InspectableGesture._RotationGesture> { .some }

    static var SequenceGesture: Inspectable<InspectableGesture._SequenceGesture> { .some }

    static var SimultaneousGesture: Inspectable<InspectableGesture._SimultaneousGesture> { .some }

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, watchOS 11.0, *)
    @available(tvOS, unavailable)
    static var SpatialEventGesture: Inspectable<InspectableGesture._SpatialEventGesture> { .some }
    #endif

    @available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
    @available(tvOS, unavailable)
    static var SpatialTapGesture: Inspectable<InspectableGesture._SpatialTapGesture> { .some }

    @available(tvOS 16.0, *)
    static var TapGesture: Inspectable<InspectableGesture._TapGesture> { .some }

    #if swift(>=6.0)
    @available(macOS 15.0, *)
    @available(iOS, unavailable)
    @available(watchOS, unavailable)
    @available(tvOS, unavailable)
    @available(visionOS, unavailable)
    static var WindowDragGesture: Inspectable<InspectableGesture._WindowDragGesture> { .some }
    #endif
}

// MARK: - property wrappers

extension Inspectable {
    static var State: Inspectable<SameBaseElement<State<Any>>> { .some }
    static var Binding: Inspectable<SameBaseElement<Binding<Any>>> { .some }
    static var Environment: Inspectable<SameBaseElement<Environment<Any>>> { .some }
}

// MARK: - modifiers

extension Inspectable {
    static var OnTap: Inspectable<InspectableModifier._OnTap> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    static var Task: Inspectable<InspectableModifier._Task> { .some }

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    static var Refreshable: Inspectable<InspectableModifier._Refreshable> { .some }
}

// MARK: - values

extension Inspectable {
    static var Int: Inspectable<SameTypeElement<Int>> { .some }
    static var Bool: Inspectable<SameTypeElement<Bool>> { .some }
    static var String: Inspectable<SameTypeElement<String>> { .some }
    static var closure: Inspectable<ClosureElement<() -> Void>> { .some }
    static var closureWithVoidParam: Inspectable<ClosureElement<(()) -> Void>> { .some }
    static var asyncClosure: Inspectable<ClosureElement<() async -> Void>> { .some }
}
