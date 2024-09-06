import SwiftUI

enum TestElement {
    enum View {
        @available(iOS, introduced: 13.0, deprecated: 100000.0, message: "use `View.alert(title:isPresented:presenting::actions:) instead.")
        @available(macOS, introduced: 10.15, deprecated: 100000.0, message: "use `View.alert(title:isPresented:presenting::actions:) instead.")
        @available(tvOS, introduced: 13.0, deprecated: 100000.0, message: "use `View.alert(title:isPresented:presenting::actions:) instead.")
        @available(watchOS, introduced: 6.0, deprecated: 100000.0, message: "use `View.alert(title:isPresented:presenting::actions:) instead.")
        typealias _Alert = SameBaseElement<Alert>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _AngularGradient = SameTypeElement<AngularGradient>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _AnyLayout = SameTypeElement<AnyLayout>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _AnyShape = SameTypeElement<AnyShape>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _AnyTransition = SameBaseElement<AnyTransition>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _AnyView = SameTypeElement<AnyView>
        
        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _AsyncImage = SameBaseElement<AsyncImage<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Button = SameBaseElement<Button<AnyView>>
        
        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _ButtonBorderShape = SameBaseElement<ButtonBorderShape>
        
        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _Canvas = SameBaseElement<Canvas<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Capsule = SameTypeElement<Capsule>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Circle = SameTypeElement<Circle>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Color = SameTypeElement<Color>
        
        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _ColorPicker = SameBaseElement<ColorPicker<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ContainerRelativeShape = SameTypeElement<ContainerRelativeShape>
        
        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _ContentUnavailableView = SameTypeElement<ContentUnavailableView<AnyView, AnyView, AnyView>>
        
        @available(iOS 15.0, macOS 12.0, tvOS 17.0, *)
        @available(watchOS, unavailable)
        typealias _ControlGroup = SameTypeElement<ControlGroup<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, watchOS 10.0, *)
        @available(tvOS, unavailable)
        typealias _DatePicker = SameBaseElement<DatePicker<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _DisclosureGroup = SameBaseElement<DisclosureGroup<AnyView, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Divider = SameTypeElement<Divider>
        
        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _DocumentGroup = SameBaseElement<DocumentGroup<Any, AnyView>>
        
        @available(iOS 13.0, *)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _EditButton = SameTypeElement<EditButton>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Ellipse = SameTypeElement<Ellipse>
        
        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _EllipticalGradient = SameTypeElement<EllipticalGradient>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _EmptyAnimatableData = SameTypeElement<EmptyAnimatableData>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _EmptyView = SameTypeElement<EmptyView>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _EquatableView = SameBaseElement<EquatableView<Never>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _FillStyle = SameBaseElement<FillStyle>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ForEach = SameBaseElement<ForEach<Data, Int, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Form = SameBaseElement<Form<AnyView>>
        
        @available(iOS 16.0, macOS 13.0, watchOS 7.0, *)
        @available(tvOS, unavailable)
        typealias _Gauge = SameBaseElement<Gauge<AnyView, AnyView, AnyView, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _GeometryReader = SameBaseElement<GeometryReader<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Gradient = SameBaseElement<Gradient>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _Grid = SameBaseElement<Grid<AnyView>>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _GridRow = SameBaseElement<GridRow<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Group = SameBaseElement<Group<AnyView>>
        
        @available(iOS 14.0, macOS 10.15, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _GroupBox = SameBaseElement<GroupBox<AnyView, AnyView>>
        
        @available(macOS 14.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _HelpLink = SameTypeElement<HelpLink>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _HStack = SameBaseElement<HStack<AnyView>>
        
        @available(macOS 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _HSplitView = SameTypeElement<HSplitView<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Image = SameTypeElement<Image>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ImagePaint = SameBaseElement<ImagePaint>
        
        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _KeyframeAnimator = SameBaseElement<KeyframeAnimator<CGFloat, KeyframeTrack<CGFloat, CGFloat, LinearKeyframe<CGFloat>>, AnyView>>
        
        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _KeyframeTimeline = SameBaseElement<KeyframeTimeline<Any>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _Label = SameBaseElement<Label<AnyView, AnyView>>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _LabeledContent = SameBaseElement<LabeledContent<AnyView, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _LayoutDirection = SameBaseElement<LayoutDirection>
        
        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _LayoutDirectionBehavior = SameBaseElement<LayoutDirectionBehavior>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _LazyHGrid = SameBaseElement<LazyHGrid<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _LazyHStack = SameBaseElement<LazyHStack<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _LazyVGrid = SameBaseElement<LazyVGrid<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _LazyVStack = SameBaseElement<LazyVStack<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _LinearGradient = SameTypeElement<LinearGradient>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _Link = SameBaseElement<Link<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _List = SameBaseElement<List<Int, AnyView>>
        
        @available(macOS 13.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _MenuBarExtra = SameBaseElement<MenuBarExtra<AnyView, AnyView>>
        
        @available(iOS, unavailable)
        @available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Use `Menu` instead.")
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _MenuButton = SameTypeElement<MenuButton<AnyView, AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 17.0, *)
        @available(watchOS, unavailable)
        typealias _Menu = SameBaseElement<Menu<AnyView, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ModifiedContent = SameTypeElement<ModifiedContent<AnyView, AnyView>>
        
        @available(iOS 16.0, *)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _MultiDatePicker = SameTypeElement<MultiDatePicker<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _NavigationLink = SameBaseElement<NavigationLink<AnyView, AnyView>>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _NavigationSplitView = SameBaseElement<NavigationSplitView<AnyView, AnyView, AnyView>>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _NavigationStack = SameBaseElement<NavigationStack<Data, AnyView>>
        
        @available(iOS, introduced: 13.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
        @available(macOS, introduced: 10.15, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
        @available(tvOS, introduced: 13.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
        @available(watchOS, introduced: 7.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
        @available(visionOS, introduced: 1.0, deprecated: 100000.0, message: "use NavigationStack or NavigationSplitView instead")
        typealias _NavigationView = SameBaseElement<NavigationView<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _OutlineGroup = SameBaseElement<OutlineGroup<Data, Int, AnyView, AnyView, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _OffsetShape<S: Shape> = SameBaseElement<OffsetShape<S>>
        
        @available(iOS 16.0, macOS 10.15, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _PasteButton = SameTypeElement<PasteButton>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Path = SameTypeElement<Path>
        
        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _PhaseAnimator = SameTypeElement<PhaseAnimator<Int, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Picker = SameBaseElement<Picker<AnyView, Int, AnyView>>
        
        @available(iOS 16.0, macOS 13.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _PresentedWindowContent = SameBaseElement<PresentedWindowContent<Data, AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ProgressView = SameBaseElement<ProgressView<AnyView, EmptyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _RadialGradient = SameTypeElement<RadialGradient>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Rectangle = SameTypeElement<Rectangle>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _RenameButton = SameTypeElement<RenameButton<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _RotatedShape<S: Shape> = SameTypeElement<RotatedShape<OffsetShape<S>>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _RoundedRectangle = SameTypeElement<RoundedRectangle>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ScaledShape<S: Shape> = SameBaseElement<ScaledShape<OffsetShape<S>>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _SceneBuilder = SameBaseElement<SceneBuilder>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _ScenePadding = SameBaseElement<ScenePadding>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _SceneStorage = SameBaseElement<SceneStorage<Any>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ScrollViewReader = SameBaseElement<ScrollViewReader<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ScrollView = SameBaseElement<ScrollView<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _SecureField = SameBaseElement<SecureField<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Section = SameBaseElement<Section<AnyView, AnyView, AnyView>>
        
        @available(macOS 11.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _Settings = SameBaseElement<Settings<AnyView>>
        
        @available(macOS 14.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _SettingsLink = SameTypeElement<SettingsLink<AnyView>>
        
        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _ShapeRole = SameTypeElement<ShapeRole>
        
        @available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
        @available(tvOS, unavailable)
        typealias _ShareLink = SameTypeElement<ShareLink<[Data], Image, Image, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
        @available(tvOS, unavailable)
        typealias _Slider = SameBaseElement<Slider<AnyView, EmptyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Spacer = SameTypeElement<Spacer>
        
        @available(iOS 13.0, macOS 10.15, watchOS 9.0, *)
        @available(tvOS, unavailable)
        typealias _Stepper = SameBaseElement<Stepper<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _SubscriptionView = SameBaseElement<SubscriptionView<NotificationCenter.Publisher, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
        typealias _TabView = SameBaseElement<TabView<Int, AnyView>>
        
        @available(iOS 16.0, macOS 12.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _Table = SameBaseElement<Table<Never, TableRow<Never>, TableColumn<Never, Never, AnyView, Text>>>
        
        @available(iOS 16.0, macOS 12.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _TableColumnBuilder<Value: Identifiable, Sort: SortComparator> = SameTypeElement<TableColumnBuilder<Value, Sort>>
        
        @available(iOS 16.0, macOS 12.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _TableRowBuilder<Value: Identifiable> = SameTypeElement<TableRowBuilder<Value>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Text = SameTypeElement<Text>
        
        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _TextEditor = SameTypeElement<TextEditor>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _TextField = SameBaseElement<TextField<AnyView>>
        
        @available(watchOS 9.0, *)
        @available(iOS, unavailable)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        @available(visionOS, unavailable)
        typealias _TextFieldLink = SameTypeElement<TextFieldLink<AnyView>>
        
        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _TimelineView = SameBaseElement<TimelineView<EveryMinuteTimelineSchedule, AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Toggle = SameBaseElement<Toggle<AnyView>>
        
        @available(macOS 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _TouchBar = SameBaseElement<TouchBar<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ToolbarContentBuilder = SameBaseElement<ToolbarContentBuilder>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _ToolbarCustomizationBehavior = SameBaseElement<ToolbarCustomizationBehavior>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _ToolbarCustomizationOptions = SameBaseElement<ToolbarCustomizationOptions>
        
        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _ToolbarDefaultItemKind = SameBaseElement<ToolbarDefaultItemKind>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ToolbarItem = SameBaseElement<ToolbarItem<Any, AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ToolbarItemGroup = SameBaseElement<ToolbarItemGroup<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ToolbarItemPlacement = SameBaseElement<ToolbarItemPlacement>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _ToolbarPlacement = SameBaseElement<ToolbarPlacement>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _ToolbarRole = SameBaseElement<ToolbarRole>
        
        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _ToolbarTitleDisplayMode = SameBaseElement<ToolbarTitleDisplayMode>
        
        @available(iOS 16.0, macOS 13.0, watchOS 9.0, tvOS 16.0, *)
        typealias _ToolbarTitleMenu = SameBaseElement<ToolbarTitleMenu<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _TupleView = SameTypeElement<TupleView<AnyView>>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _UnevenRoundedRectangle = SameTypeElement<UnevenRoundedRectangle>
        
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _ViewThatFits = SameBaseElement<ViewThatFits<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _VStack = SameBaseElement<VStack<AnyView>>
        
        @available(macOS 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _VSplitView = SameBaseElement<VSplitView<AnyView>>
        
        @available(macOS 13.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _Window = SameBaseElement<Window<AnyView>>
        
        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _WindowGroup = SameBaseElement<WindowGroup<AnyView>>
        
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ZStack = SameBaseElement<ZStack<AnyView>>
    }
    
    enum Modifier {
        struct _Refreshable: ModifierDerivedElement {
            let node: ReflectionNode
            static func makeModifiedContent() -> Any { EmptyView().refreshable {} }
        }
        
        struct _Task: ModifierDerivedElement {
            let node: ReflectionNode
            static func makeModifiedContent() -> Any { EmptyView().task {} }
        }
        
        struct _OnAppear: ModifierDerivedElement {
            let node: ReflectionNode
            static func makeModifiedContent() -> Any { EmptyView().onAppear {} }
        }
        
        struct _OnDisappear: ModifierDerivedElement {
            let node: ReflectionNode
            static func makeModifiedContent() -> Any { EmptyView().onDisappear {} }
        }
        
        struct _OnTap: ModifierDerivedElement {
            let node: ReflectionNode
            static func makeModifiedContent() -> Any { EmptyView().onTapGesture {} }
        }
    }
    
    enum PropertyWrapper {
        final class DummyObservableObject: ObservableObject {}
        typealias _State = SameBaseElement<State<Any>>
        typealias _Binding = SameBaseElement<Binding<Any>>
        typealias _Environment = SameBaseElement<Environment<Any>>
        typealias _EnvironmentObject = SameBaseElement<EnvironmentObject<DummyObservableObject>>
    }
    
    enum Value {
        typealias _Bool = SameTypeElement<Bool>
        typealias _String = SameTypeElement<String>
        typealias _closure = ClosureElement<() -> Void>
        typealias _voidParamClosure = ClosureElement<(()) -> Void>
        typealias _asyncClosure = ClosureElement<() async -> Void>
    }
}

extension TestElement.Modifier._Refreshable {
    func doRefresh() async {
        await node.oneElement(TestElement.Value._asyncClosure.self).castValue()
    }
}

extension TestElement.Modifier._Task {
    func doTask() async {
        await node.oneElement(TestElement.Value._asyncClosure.self).castValue()
    }
}

extension TestElement.Modifier._OnAppear {
    func doOnAppear() {
        node.oneElement(TestElement.Value._closure.self).castValue()
    }
}

extension TestElement.Modifier._OnTap {
    func doTap() {
        node.oneElement(TestElement.Value._voidParamClosure.self).castValue(())
    }
}

extension TestElement.View._Text {
    var string: String {
        node.oneElement(TestElement.Value._String.self).castValue
    }
}

extension TestElement.View._Image {
    var name: String? {
        node.allElements(TestElement.Value._String.self).first { $0.node.label == "name" }?.castValue
    }
}

extension TestElement.View._Button {
    func tap() {
        node.oneElement(TestElement.Value._closure.self).castValue()
    }
}

extension TestElement.View._Toggle {
    private enum DummyEnum {
        case case0
        case case1
    }
    
    var isOn: Binding<Bool> {
        let binding = node.oneElement(TestElement.PropertyWrapper._Binding.self)
        if let boolBinding = binding.node.object as? Binding<Bool> {
            return boolBinding
        }
        let dummyBinding = CastingUtils.memoryCast(binding.node.object, Binding<DummyEnum>.self)
        return Binding {
            dummyBinding.wrappedValue == .case0
        } set: {
            dummyBinding.wrappedValue = $0 ? .case0 : .case1
        }
    }
    
    func toggle() {
        isOn.wrappedValue.toggle()
    }
}
