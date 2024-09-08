import Combine
import SwiftUI

enum InspectableView {
    typealias _AngularGradient = SameTypeElement<AngularGradient>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _AnyShape = SameTypeElement<AnyShape>

    typealias _AnyView = SameTypeElement<AnyView>

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    typealias _AsyncImage = SameBaseElement<AsyncImage<Never>>

    typealias _Button = SameBaseElement<Button<Never>>

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    typealias _ButtonBorderShape = SameTypeElement<ButtonBorderShape>

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    typealias _Canvas = SameBaseElement<Canvas<Never>>

    typealias _Capsule = SameTypeElement<Capsule>

    typealias _Circle = SameTypeElement<Circle>

    typealias _Color = SameTypeElement<Color>

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _ColorPicker = SameBaseElement<ColorPicker<Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _ContainerRelativeShape = SameTypeElement<ContainerRelativeShape>

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    typealias _ContentUnavailableView = SameBaseElement<ContentUnavailableView<Never, Never, Never>>

    @available(iOS 15.0, macOS 12.0, tvOS 17.0, *)
    @available(watchOS, unavailable)
    typealias _ControlGroup = SameBaseElement<ControlGroup<Never>>

    @available(watchOS 10.0, *)
    @available(tvOS, unavailable)
    typealias _DatePicker = SameBaseElement<DatePicker<Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _DefaultDateProgressLabel = SameTypeElement<DefaultDateProgressLabel>

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, visionOS 2.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _DefaultDocumentGroupLaunchActions = SameTypeElement<DefaultDocumentGroupLaunchActions>
    #endif

    @available(macOS 14.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    typealias _DefaultSettingsLinkLabel = SameTypeElement<DefaultSettingsLinkLabel>

    @available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
    @available(tvOS, unavailable)
    typealias _DefaultShareLinkLabel = SameTypeElement<DefaultShareLinkLabel>

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    typealias _DefaultTabLabel = SameTypeElement<DefaultTabLabel>
    #endif

    #if swift(>=6.0)
    @available(macOS 15.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    typealias _DefaultWindowVisibilityToggleLabel = SameTypeElement<DefaultWindowVisibilityToggleLabel>
    #endif

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _DisclosureGroup = SameBaseElement<DisclosureGroup<Never, Never>>

    typealias _Divider = SameTypeElement<Divider>

    #if swift(>=6.0)
    @available(iOS 18.0, *)
    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(macCatalyst, unavailable)
    @available(visionOS, unavailable)
    @available(macCatalyst, unavailable)
    typealias _DocumentLaunchView = SameBaseElement<DocumentLaunchView<Never, Never>>
    #endif

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _EditableCollectionContent = SameBaseElement<EditableCollectionContent<Never, Never>>

    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _EditButton = SameTypeElement<EditButton>

    typealias _Ellipse = SameTypeElement<Ellipse>

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    typealias _EllipticalGradient = SameTypeElement<EllipticalGradient>

    typealias _EmptyView = SameTypeElement<EmptyView>

    typealias _EquatableView = SameBaseElement<EquatableView<Never>>

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    typealias _FillShapeView = SameBaseElement<FillShapeView<Circle, Never, Never>>

    typealias _ForEach = SameBaseElement<ForEach<[Never], Int, Never>>

    typealias _Form = SameBaseElement<Form<Never>>

    @available(iOS 16.0, macOS 13.0, watchOS 7.0, *)
    @available(tvOS, unavailable)
    typealias _Gauge = SameBaseElement<Gauge<Never, Never, Never, Never>>

    typealias _GeometryReader = SameBaseElement<GeometryReader<Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _Grid = SameBaseElement<Grid<Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _GridRow = SameBaseElement<GridRow<Never>>

    typealias _Group = SameBaseElement<Group<Never>>

    @available(iOS 14.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _GroupBox = SameBaseElement<GroupBox<Never, Never>>

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    typealias _GroupElementsOfContent = SameBaseElement<GroupElementsOfContent<Never, Never>>
    #endif

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    typealias _GroupSectionsOfContent = SameBaseElement<GroupSectionsOfContent<Never, Never>>
    #endif

    @available(macOS 14.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _HelpLink = SameTypeElement<HelpLink>

    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    typealias _HSplitView = SameBaseElement<HSplitView<Never>>

    typealias _HStack = SameBaseElement<HStack<Never>>

    typealias _Image = SameTypeElement<Image>

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    typealias _KeyframeAnimator = SameBaseElement<KeyframeAnimator<Never, Never, Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _Label = SameBaseElement<Label<Never, Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _LabeledContent = SameBaseElement<LabeledContent<Never, Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 17.0, *)
    @available(watchOS, unavailable)
    typealias _LabeledControlGroupContent = SameBaseElement<LabeledControlGroupContent<Never, Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _LabeledToolbarItemGroupContent = SameBaseElement<LabeledToolbarItemGroupContent<Never, Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _LazyHGrid = SameBaseElement<LazyHGrid<Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _LazyHStack = SameBaseElement<LazyHStack<Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _LazyVGrid = SameBaseElement<LazyVGrid<Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _LazyVStack = SameBaseElement<LazyVStack<Never>>

    typealias _LinearGradient = SameTypeElement<LinearGradient>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _Link = SameBaseElement<Link<Never>>

    typealias _List = SameBaseElement<List<Int, Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 17.0, *)
    @available(watchOS, unavailable)
    typealias _Menu = SameBaseElement<Menu<Never, Never>>

    @available(iOS, unavailable)
    @available(macOS, introduced: 10.15, deprecated: 100000.0, message: "Use `Menu` instead.")
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    typealias _MenuButton = SameBaseElement<MenuButton<Never, Never>>

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
    typealias _MeshGradient = SameTypeElement<MeshGradient>
    #endif

    typealias _ModifiedContent = SameBaseElement<ModifiedContent<Never, Never>>

    @available(iOS 16.0, *)
    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _MultiDatePicker = SameBaseElement<MultiDatePicker<Never>>

    typealias _NavigationLink = SameBaseElement<NavigationLink<Never, Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _NavigationSplitView = SameBaseElement<NavigationSplitView<Never, Never, Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _NavigationStack = SameBaseElement<NavigationStack<Never, Never>>

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

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _OutlineGroup = SameBaseElement<OutlineGroup<[Never], Int, Never, Never, Never>>

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _OutlineSubgroupChildren = SameTypeElement<OutlineSubgroupChildren>

    @available(iOS 16.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _PasteButton = SameTypeElement<PasteButton>

    typealias _Path = SameTypeElement<Path>

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    typealias _PhaseAnimator = SameBaseElement<PhaseAnimator<Never, Never>>

    typealias _Picker = SameBaseElement<Picker<Never, Int, Never>>

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    typealias _PlaceholderContentView = SameBaseElement<PlaceholderContentView<Never>>

    @available(iOS 16.0, macOS 13.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _PresentedWindowContent = SameBaseElement<PresentedWindowContent<Int, Never>>

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    typealias _PreviewModifierContent = SameTypeElement<PreviewModifierContent>
    #endif

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _ProgressView = SameBaseElement<ProgressView<Never, Never>>

    typealias _RadialGradient = SameTypeElement<RadialGradient>

    typealias _Rectangle = SameTypeElement<Rectangle>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _RenameButton = SameBaseElement<RenameButton<Never>>

    typealias _RotatedShape = SameBaseElement<RotatedShape<Circle>>

    typealias _RoundedRectangle = SameTypeElement<RoundedRectangle>

    typealias _ScaledShape = SameBaseElement<ScaledShape<Circle>>

    typealias _ScrollView = SameBaseElement<ScrollView<Never>>

    @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
    typealias _ScrollViewReader = SameBaseElement<ScrollViewReader<Never>>

    typealias _Section = SameBaseElement<Section<Never, Never, Never>>

    typealias _SecureField = SameBaseElement<SecureField<Never>>

    @available(macOS 14.0, *)
    @available(iOS, unavailable)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    @available(visionOS, unavailable)
    typealias _SettingsLink = SameBaseElement<SettingsLink<Never>>

    @available(iOS 16.0, macOS 13.0, watchOS 9.0, *)
    @available(tvOS, unavailable)
    typealias _ShareLink = SameBaseElement<ShareLink<[Never], Never, Never, Never>>

    @available(tvOS, unavailable)
    typealias _Slider = SameBaseElement<Slider<Never, Never>>

    typealias _Spacer = SameTypeElement<Spacer>

    @available(watchOS 9.0, *)
    @available(tvOS, unavailable)
    typealias _Stepper = SameBaseElement<Stepper<Never>>

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    typealias _StrokeBorderShapeView = SameBaseElement<StrokeBorderShapeView<Circle, Never, Never>>

    @available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
    typealias _StrokeShapeView = SameBaseElement<StrokeShapeView<Circle, Never, Never>>

    typealias _SubscriptionView = SameBaseElement<SubscriptionView<AnyPublisher<Void, Never>, Never>>

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    typealias _Subview = SameTypeElement<Subview>
    #endif

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    typealias _SubviewsCollection = SameTypeElement<SubviewsCollection>
    #endif

    #if swift(>=6.0)
    @available(iOS 18.0, macOS 15.0, tvOS 18.0, watchOS 11.0, visionOS 2.0, *)
    typealias _SubviewsCollectionSlice = SameTypeElement<SubviewsCollectionSlice>
    #endif

    @available(iOS 16.0, macOS 12.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _Table = SameBaseElement<Table<Never, Never, Never>>

    @available(watchOS 7.0, *)
    typealias _TabView = SameBaseElement<TabView<Int, Never>>

    typealias _Text = SameTypeElement<Text>

    @available(iOS 14.0, macOS 11.0, *)
    @available(tvOS, unavailable)
    @available(watchOS, unavailable)
    typealias _TextEditor = SameTypeElement<TextEditor>

    typealias _TextField = SameBaseElement<TextField<Never>>

    @available(watchOS 9.0, *)
    @available(iOS, unavailable)
    @available(macOS, unavailable)
    @available(tvOS, unavailable)
    @available(visionOS, unavailable)
    typealias _TextFieldLink = SameBaseElement<TextFieldLink<Never>>

    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    typealias _TimelineView = SameBaseElement<TimelineView<AnimationTimelineSchedule, Never>>

    typealias _Toggle = SameBaseElement<Toggle<Never>>

    typealias _TransformedShape = SameBaseElement<TransformedShape<Circle>>

    typealias _TupleView = SameBaseElement<TupleView<Never>>

    @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
    typealias _UnevenRoundedRectangle = SameTypeElement<UnevenRoundedRectangle>

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

extension InspectableView._Button {
    func tap() {
        node.one(.closure).castValue()
    }
}

extension InspectableView._Text {
    var string: String {
        node.one(.String).castValue
    }
}

extension InspectableView._Image {
    var name: String? {
        node.all(.String).first { $0.node.label == "name" }?.castValue
    }
}

extension InspectableView._TextField {
    var text: Binding<String> {
        node.one(.Binding).tryCast() ?? .constant("")
    }
}

extension InspectableView._Toggle {
    private enum DummyEnum {
        case case0
        case case1
    }

    var isOn: Binding<Bool> {
        let binding = node.one(.Binding)
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
