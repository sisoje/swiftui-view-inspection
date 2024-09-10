import SwiftUI
import Combine

extension InspectableType {
typealias _AngularGradient = SameBaseElement<AngularGradient>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _AnyShape = SameBaseElement<AnyShape>

typealias _AnyView = SameBaseElement<AnyView>

typealias _AsyncImage = SameBaseElement<AsyncImage<Never>>

typealias _Button = SameBaseElement<Button<Never>>

typealias _ButtonBorderShape = SameBaseElement<ButtonBorderShape>

typealias _Canvas = SameBaseElement<Canvas<Never>>

typealias _Capsule = SameBaseElement<Capsule>

typealias _Circle = SameBaseElement<Circle>

typealias _Color = SameBaseElement<Color>

@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _ColorPicker = SameBaseElement<ColorPicker<Never>>

typealias _ContainerRelativeShape = SameBaseElement<ContainerRelativeShape>

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
typealias _ContentUnavailableView = SameBaseElement<ContentUnavailableView<Never,Never,Never>>

@available(tvOS 17.0, *)
@available(watchOS, unavailable)
typealias _ControlGroup = SameBaseElement<ControlGroup<Never>>

@available(watchOS 10.0, *)
@available(tvOS, unavailable)
typealias _DatePicker = SameBaseElement<DatePicker<Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _DefaultDateProgressLabel = SameBaseElement<DefaultDateProgressLabel>

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, visionOS 2.0, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _DefaultDocumentGroupLaunchActions = SameBaseElement<DefaultDocumentGroupLaunchActions>
#endif

@available(macOS 14.0, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
typealias _DefaultSettingsLinkLabel = SameBaseElement<DefaultSettingsLinkLabel>

@available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
@available(tvOS, unavailable)
typealias _DefaultShareLinkLabel = SameBaseElement<DefaultShareLinkLabel>

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
typealias _DefaultTabLabel = SameBaseElement<DefaultTabLabel>
#endif

#if swift(>=6.0)
@available(macOS 15.0, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
typealias _DefaultWindowVisibilityToggleLabel = SameBaseElement<DefaultWindowVisibilityToggleLabel>
#endif

@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _DisclosureGroup = SameBaseElement<DisclosureGroup<Never,Never>>

typealias _Divider = SameBaseElement<Divider>

#if swift(>=6.0)
@available(iOS 18.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(macCatalyst, unavailable)
@available(visionOS, unavailable)
@available(macCatalyst, unavailable)
typealias _DocumentLaunchView = SameBaseElement<DocumentLaunchView<Never,Never>>
#endif

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _EditableCollectionContent = SameBaseElement<EditableCollectionContent<Never,Never>>

@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _EditButton = SameBaseElement<EditButton>

typealias _Ellipse = SameBaseElement<Ellipse>

typealias _EllipticalGradient = SameBaseElement<EllipticalGradient>

typealias _EmptyView = SameBaseElement<EmptyView>

typealias _EquatableView = SameBaseElement<EquatableView<Never>>

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
typealias _FillShapeView = SameBaseElement<FillShapeView<Circle,Never,Never>>

typealias _ForEach = SameBaseElement<ForEach<Array<Never>,Int,Never>>

typealias _Form = SameBaseElement<Form<Never>>

@available(iOS 16.0, macOS 13.0, *)
@available(tvOS, unavailable)
typealias _Gauge = SameBaseElement<Gauge<Never,Never,Never,Never>>

typealias _GeometryReader = SameBaseElement<GeometryReader<Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _Grid = SameBaseElement<Grid<Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _GridRow = SameBaseElement<GridRow<Never>>

typealias _Group = SameBaseElement<Group<Never>>

@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _GroupBox = SameBaseElement<GroupBox<Never,Never>>

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
typealias _GroupElementsOfContent = SameBaseElement<GroupElementsOfContent<Never,Never>>
#endif

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
typealias _GroupSectionsOfContent = SameBaseElement<GroupSectionsOfContent<Never,Never>>
#endif

@available(macOS 14.0, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _HelpLink = SameBaseElement<HelpLink>

@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
typealias _HSplitView = SameBaseElement<HSplitView<Never>>

typealias _HStack = SameBaseElement<HStack<Never>>

typealias _Image = SameBaseElement<Image>

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
typealias _KeyframeAnimator = SameBaseElement<KeyframeAnimator<Never,Never,Never>>

typealias _Label = SameBaseElement<Label<Never,Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _LabeledContent = SameBaseElement<LabeledContent<Never,Never>>

@available(iOS 16.0, macOS 13.0, tvOS 17.0, *)
@available(watchOS, unavailable)
typealias _LabeledControlGroupContent = SameBaseElement<LabeledControlGroupContent<Never,Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _LabeledToolbarItemGroupContent = SameBaseElement<LabeledToolbarItemGroupContent<Never,Never>>

typealias _LazyHGrid = SameBaseElement<LazyHGrid<Never>>

typealias _LazyHStack = SameBaseElement<LazyHStack<Never>>

typealias _LazyVGrid = SameBaseElement<LazyVGrid<Never>>

typealias _LazyVStack = SameBaseElement<LazyVStack<Never>>

typealias _LinearGradient = SameBaseElement<LinearGradient>

typealias _Link = SameBaseElement<Link<Never>>

typealias _List = SameBaseElement<List<Int,Never>>

@available(tvOS 17.0, *)
@available(watchOS, unavailable)
typealias _Menu = SameBaseElement<Menu<Never,Never>>

@available(iOS, unavailable)
@available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Use `Menu` instead.")
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
typealias _MenuButton = SameBaseElement<MenuButton<Never,Never>>

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
typealias _MeshGradient = SameBaseElement<MeshGradient>
#endif

typealias _ModifiedContent = SameBaseElement<ModifiedContent<Never,Never>>

@available(iOS 16.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _MultiDatePicker = SameBaseElement<MultiDatePicker<Never>>

typealias _NavigationLink = SameBaseElement<NavigationLink<Never,Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _NavigationSplitView = SameBaseElement<NavigationSplitView<Never,Never,Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _NavigationStack = SameBaseElement<NavigationStack<Never,Never>>

@available(iOS, introduced: 13.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
@available(macOS, introduced: 10.15, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
@available(tvOS, introduced: 13.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
@available(watchOS, introduced: 7.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
@available(visionOS, introduced: 1.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
typealias _NavigationView = SameBaseElement<NavigationView<Never>>

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, visionOS 2.0, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _NewDocumentButton = SameBaseElement<NewDocumentButton<Never>>
#endif

typealias _OffsetShape = SameBaseElement<OffsetShape<Circle>>

@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _OutlineGroup = SameBaseElement<OutlineGroup<Array<Never>,Int,Never,Never,Never>>

@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _OutlineSubgroupChildren = SameBaseElement<OutlineSubgroupChildren>

@available(iOS 16.0, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _PasteButton = SameBaseElement<PasteButton>

typealias _Path = SameBaseElement<Path>

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
typealias _PhaseAnimator = SameBaseElement<PhaseAnimator<Never,Never>>

typealias _Picker = SameBaseElement<Picker<Never,Int,Never>>

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
typealias _PlaceholderContentView = SameBaseElement<PlaceholderContentView<Never>>

@available(iOS 16.0, macOS 13.0, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _PresentedWindowContent = SameBaseElement<PresentedWindowContent<Int,Never>>

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
typealias _PreviewModifierContent = SameBaseElement<PreviewModifierContent>
#endif

typealias _ProgressView = SameBaseElement<ProgressView<Never,Never>>

typealias _RadialGradient = SameBaseElement<RadialGradient>

typealias _Rectangle = SameBaseElement<Rectangle>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _RenameButton = SameBaseElement<RenameButton<Never>>

typealias _RotatedShape = SameBaseElement<RotatedShape<Circle>>

typealias _RoundedRectangle = SameBaseElement<RoundedRectangle>

typealias _ScaledShape = SameBaseElement<ScaledShape<Circle>>

typealias _ScrollView = SameBaseElement<ScrollView<Never>>

typealias _ScrollViewReader = SameBaseElement<ScrollViewReader<Never>>

typealias _Section = SameBaseElement<Section<Never,Never,Never>>

typealias _SecureField = SameBaseElement<SecureField<Never>>

@available(macOS 14.0, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
typealias _SettingsLink = SameBaseElement<SettingsLink<Never>>

@available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
@available(tvOS, unavailable)
typealias _ShareLink = SameBaseElement<ShareLink<Array<Never>,Never,Never,Never>>

@available(tvOS, unavailable)
typealias _Slider = SameBaseElement<Slider<Never,Never>>

typealias _Spacer = SameBaseElement<Spacer>

@available(watchOS 9.0, *)
@available(tvOS, unavailable)
typealias _Stepper = SameBaseElement<Stepper<Never>>

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
typealias _StrokeBorderShapeView = SameBaseElement<StrokeBorderShapeView<Circle,Never,Never>>

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
typealias _StrokeShapeView = SameBaseElement<StrokeShapeView<Circle,Never,Never>>

typealias _SubscriptionView = SameBaseElement<SubscriptionView<AnyPublisher<Void,Never>,Never>>

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
typealias _Subview = SameBaseElement<Subview>
#endif

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
typealias _SubviewsCollection = SameBaseElement<SubviewsCollection>
#endif

#if swift(>=6.0)
@available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
typealias _SubviewsCollectionSlice = SameBaseElement<SubviewsCollectionSlice>
#endif

@available(iOS 16.0, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _Table = SameBaseElement<Table<Never,Never,Never>>

typealias _TabView = SameBaseElement<TabView<Int,Never>>

typealias _Text = SameBaseElement<Text>

@available(tvOS, unavailable)
@available(watchOS, unavailable)
typealias _TextEditor = SameBaseElement<TextEditor>

typealias _TextField = SameBaseElement<TextField<Never>>

@available(watchOS 9.0, *)
@available(iOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(visionOS, unavailable)
typealias _TextFieldLink = SameBaseElement<TextFieldLink<Never>>

typealias _TimelineView = SameBaseElement<TimelineView<AnimationTimelineSchedule,Never>>

typealias _Toggle = SameBaseElement<Toggle<Never>>

typealias _TransformedShape = SameBaseElement<TransformedShape<Circle>>

typealias _TupleView = SameBaseElement<TupleView<Never>>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _UnevenRoundedRectangle = SameBaseElement<UnevenRoundedRectangle>

@available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
typealias _ViewThatFits = SameBaseElement<ViewThatFits<Never>>

@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
typealias _VSplitView = SameBaseElement<VSplitView<Never>>

typealias _VStack = SameBaseElement<VStack<Never>>

#if swift(>=6.0)
@available(macOS 15.0, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
@available(visionOS, unavailable)
typealias _WindowVisibilityToggle = SameBaseElement<WindowVisibilityToggle<Never>>
#endif

typealias _ZStack = SameBaseElement<ZStack<Never>>
}