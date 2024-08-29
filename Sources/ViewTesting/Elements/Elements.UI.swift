import SwiftUI

extension Elements.UI._Text {
    var string: String {
        node.strings[0].castValue
    }
}

extension Elements.UI._Image {
    var name: String {
        node.strings[0].castValue
    }
}

extension Elements.UI._Button {
    func tap() {
        node.actions[0].castValue()
    }
}

extension Elements.UI._Toggle {
    private enum DummyEnum {
        case case0
        case case1
    }
    
    var isOn: Binding<Bool> {
        let binding = node.bindings[0]
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
