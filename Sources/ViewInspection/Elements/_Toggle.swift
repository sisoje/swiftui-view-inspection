import SwiftUI

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
