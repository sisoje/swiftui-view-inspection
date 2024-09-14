import SwiftUI

extension InspectableType._Toggle {
    var binding: Binding<Bool> {
        get throws {
            let binding = try node.one(.binding)
            do {
                return try binding.tryCast()
            } catch {
                let dummyBinding = CastingUtils.memoryCast(binding.node.object, Binding<DummyEnum>.self)
                return Binding {
                    dummyBinding.wrappedValue == .case0
                } set: {
                    dummyBinding.wrappedValue = $0 ? .case0 : .case1
                }
            }
        }
    }
}
