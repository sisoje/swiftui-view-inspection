import SwiftUI

enum InspectableType {}

extension InspectableType {
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
    struct _Refreshable: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().refreshable {} }
    }

    @available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
    struct _OnTap: ModifierDerivedElement {
        let node: ReflectionNode
        static func makeModifiedContent() -> Any { EmptyView().onTapGesture {} }
    }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
extension InspectableType._Refreshable {
    func refresh() async throws {
        try await node.one(.asyncClosure).castValue()
    }
}

@available(iOS 13.0, macOS 10.15, tvOS 16.0, watchOS 6.0, *)
extension InspectableType._OnTap {
    func tap() throws {
        try node.one(.closureWithVoidParam).castValue(())
    }
}

extension InspectableType._Button {
    func action() throws {
        try node.one(.closure).castValue()
    }
}

extension InspectableType._Text {
    var string: String {
        get throws {
            try node.one(.string).castValue
        }
    }
}

extension InspectableType._Image {
    var name: String {
        get throws {
            try node.one(.string) {
                $0.node.label == "name"
            }.castValue
        }
    }
}

extension InspectableType._TextField {
    var text: Binding<String> {
        get throws {
            try node.one(.binding).tryCast()
        }
    }
}

extension InspectableType._Slider {
    var value: Binding<Double> {
        get throws {
            try node.one(.binding).tryCast()
        }
    }
}

extension InspectableType._Toggle {
    var isOn: Binding<Bool> {
        get throws {
            let binding = try node.one(.binding)
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
    }

    func toggle() throws {
        try isOn.wrappedValue.toggle()
    }
}
