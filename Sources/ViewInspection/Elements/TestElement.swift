import SwiftUI
import Combine

enum TestElement {
    enum View {
        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _AngularGradient = SameTypeElement<AngularGradient>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _AnyShape = SameTypeElement<AnyShape>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _AnyView = SameTypeElement<AnyView>

        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _AsyncImage = SameBaseElement<AsyncImage<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Button = SameBaseElement<Button<Never>>

        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _ButtonBorderShape = SameTypeElement<ButtonBorderShape>

        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _Canvas = SameBaseElement<Canvas<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Capsule = SameTypeElement<Capsule>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Circle = SameTypeElement<Circle>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Color = SameTypeElement<Color>

        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _ColorPicker = SameBaseElement<ColorPicker<Never>>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ContainerRelativeShape = SameTypeElement<ContainerRelativeShape>

        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _ContentUnavailableView = SameBaseElement<ContentUnavailableView<Never,Never,Never>>

        @available(iOS 15.0, macOS 12.0, tvOS 17.0, *)
        @available(watchOS, unavailable)
        typealias _ControlGroup = SameBaseElement<ControlGroup<Never>>

        @available(iOS 13.0, macOS 10.15, watchOS 10.0, *)
        @available(tvOS, unavailable)
        typealias _DatePicker = SameBaseElement<DatePicker<Never>>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _DefaultDateProgressLabel = SameTypeElement<DefaultDateProgressLabel>

        @available(iOS 18.0, macOS 15.0, visionOS 2.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _DefaultDocumentGroupLaunchActions = SameTypeElement<DefaultDocumentGroupLaunchActions>

        @available(macOS 14.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _DefaultSettingsLinkLabel = SameTypeElement<DefaultSettingsLinkLabel>

        @available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
        @available(tvOS, unavailable)
        typealias _DefaultShareLinkLabel = SameTypeElement<DefaultShareLinkLabel>

        @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
        typealias _DefaultTabLabel = SameTypeElement<DefaultTabLabel>

        @available(macOS 15.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _DefaultWindowVisibilityToggleLabel = SameTypeElement<DefaultWindowVisibilityToggleLabel>

        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _DisclosureGroup = SameBaseElement<DisclosureGroup<Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Divider = SameTypeElement<Divider>

        @available(iOS 18.0, *)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(macCatalyst, unavailable)
        @available(visionOS, unavailable)
        @available(macCatalyst, unavailable)
        typealias _DocumentLaunchView = SameBaseElement<DocumentLaunchView<Never,Never>>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _EditableCollectionContent = SameBaseElement<EditableCollectionContent<Never,Never>>

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
        typealias _EmptyView = SameTypeElement<EmptyView>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _EquatableView = SameBaseElement<EquatableView<Never>>

        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _FillShapeView = SameBaseElement<FillShapeView<Circle,Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ForEach = SameBaseElement<ForEach<Array<Never>,Int,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Form = SameBaseElement<Form<Never>>

        @available(iOS 16.0, macOS 13.0, watchOS 7.0, *)
        @available(tvOS, unavailable)
        typealias _Gauge = SameBaseElement<Gauge<Never,Never,Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _GeometryReader = SameBaseElement<GeometryReader<Never>>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _Grid = SameBaseElement<Grid<Never>>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _GridRow = SameBaseElement<GridRow<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Group = SameBaseElement<Group<Never>>

        @available(iOS 14.0, macOS 10.15, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _GroupBox = SameBaseElement<GroupBox<Never,Never>>

        @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
        typealias _GroupElementsOfContent = SameBaseElement<GroupElementsOfContent<Never,Never>>

        @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
        typealias _GroupSectionsOfContent = SameBaseElement<GroupSectionsOfContent<Never,Never>>

        @available(macOS 14.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _HelpLink = SameTypeElement<HelpLink>

        @available(macOS 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _HSplitView = SameBaseElement<HSplitView<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _HStack = SameBaseElement<HStack<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Image = SameTypeElement<Image>

        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _KeyframeAnimator = SameBaseElement<KeyframeAnimator<Never,Never,Never>>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _Label = SameBaseElement<Label<Never,Never>>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _LabeledContent = SameBaseElement<LabeledContent<Never,Never>>

        @available(iOS 16.0, macOS 13.0, tvOS 17.0, *)
        @available(watchOS, unavailable)
        typealias _LabeledControlGroupContent = SameBaseElement<LabeledControlGroupContent<Never,Never>>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _LabeledToolbarItemGroupContent = SameBaseElement<LabeledToolbarItemGroupContent<Never,Never>>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _LazyHGrid = SameBaseElement<LazyHGrid<Never>>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _LazyHStack = SameBaseElement<LazyHStack<Never>>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _LazyVGrid = SameBaseElement<LazyVGrid<Never>>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _LazyVStack = SameBaseElement<LazyVStack<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _LinearGradient = SameTypeElement<LinearGradient>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _Link = SameBaseElement<Link<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _List = SameBaseElement<List<Int,Never>>

        @available(iOS 14.0, macOS 11.0, tvOS 17.0, *)
        @available(watchOS, unavailable)
        typealias _Menu = SameBaseElement<Menu<Never,Never>>

        @available(iOS, unavailable)
        @available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Use `Menu` instead.")
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _MenuButton = SameBaseElement<MenuButton<Never,Never>>

        @available(iOS 18.0, macOS 15.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
        typealias _MeshGradient = SameTypeElement<MeshGradient>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ModifiedContent = SameBaseElement<ModifiedContent<Never,Never>>

        @available(iOS 16.0, *)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _MultiDatePicker = SameBaseElement<MultiDatePicker<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
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

        @available(iOS 18.0, macOS 15.0, visionOS 2.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _NewDocumentButton = SameBaseElement<NewDocumentButton<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _OffsetShape = SameBaseElement<OffsetShape<Circle>>

        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _OutlineGroup = SameBaseElement<OutlineGroup<Array<Never>,Int,Never,Never,Never>>

        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _OutlineSubgroupChildren = SameTypeElement<OutlineSubgroupChildren>

        @available(iOS 16.0, macOS 10.15, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _PasteButton = SameTypeElement<PasteButton>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Path = SameTypeElement<Path>

        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _PhaseAnimator = SameBaseElement<PhaseAnimator<Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Picker = SameBaseElement<Picker<Never,Int,Never>>

        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _PlaceholderContentView = SameBaseElement<PlaceholderContentView<Never>>

        @available(iOS 16.0, macOS 13.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _PresentedWindowContent = SameBaseElement<PresentedWindowContent<Int,Never>>

        @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
        typealias _PreviewModifierContent = SameTypeElement<PreviewModifierContent>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ProgressView = SameBaseElement<ProgressView<Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _RadialGradient = SameTypeElement<RadialGradient>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Rectangle = SameTypeElement<Rectangle>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _RenameButton = SameBaseElement<RenameButton<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _RotatedShape = SameBaseElement<RotatedShape<Circle>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _RoundedRectangle = SameTypeElement<RoundedRectangle>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ScaledShape = SameBaseElement<ScaledShape<Circle>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ScrollView = SameBaseElement<ScrollView<Never>>

        @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
        typealias _ScrollViewReader = SameBaseElement<ScrollViewReader<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Section = SameBaseElement<Section<Never,Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
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

        @available(iOS 13.0, macOS 10.15, watchOS 6.0, *)
        @available(tvOS, unavailable)
        typealias _Slider = SameBaseElement<Slider<Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Spacer = SameTypeElement<Spacer>

        @available(iOS 13.0, macOS 10.15, watchOS 9.0, *)
        @available(tvOS, unavailable)
        typealias _Stepper = SameBaseElement<Stepper<Never>>

        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _StrokeBorderShapeView = SameBaseElement<StrokeBorderShapeView<Circle,Never,Never>>

        @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
        typealias _StrokeShapeView = SameBaseElement<StrokeShapeView<Circle,Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _SubscriptionView = SameBaseElement<SubscriptionView<AnyPublisher<Void,Never>,Never>>

        @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
        typealias _Subview = SameTypeElement<Subview>

        @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
        typealias _SubviewsCollection = SameTypeElement<SubviewsCollection>

        @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
        typealias _SubviewsCollectionSlice = SameTypeElement<SubviewsCollectionSlice>

        @available(iOS 16.0, macOS 12.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _Table = SameBaseElement<Table<Never,Never,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 7.0, *)
        typealias _TabView = SameBaseElement<TabView<Int,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Text = SameTypeElement<Text>

        @available(iOS 14.0, macOS 11.0, *)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        typealias _TextEditor = SameTypeElement<TextEditor>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _TextField = SameBaseElement<TextField<Never>>

        @available(watchOS 9.0, *)
        @available(iOS, unavailable)
        @available(macOS, unavailable)
        @available(tvOS, unavailable)
        @available(visionOS, unavailable)
        typealias _TextFieldLink = SameBaseElement<TextFieldLink<Never>>

        @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
        typealias _TimelineView = SameBaseElement<TimelineView<AnimationTimelineSchedule,Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _Toggle = SameBaseElement<Toggle<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _TransformedShape = SameBaseElement<TransformedShape<Circle>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _TupleView = SameBaseElement<TupleView<Never>>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _UnevenRoundedRectangle = SameTypeElement<UnevenRoundedRectangle>

        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        typealias _ViewThatFits = SameBaseElement<ViewThatFits<Never>>

        @available(macOS 10.15, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _VSplitView = SameBaseElement<VSplitView<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _VStack = SameBaseElement<VStack<Never>>

        @available(macOS 15.0, *)
        @available(iOS, unavailable)
        @available(tvOS, unavailable)
        @available(watchOS, unavailable)
        @available(visionOS, unavailable)
        typealias _WindowVisibilityToggle = SameBaseElement<WindowVisibilityToggle<Never>>

        @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
        typealias _ZStack = SameBaseElement<ZStack<Never>>
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
