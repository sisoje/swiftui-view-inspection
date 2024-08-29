import SwiftUI

enum TestUI {
    struct _Text: ReflectionTree {
        let root: ReflectionNode
        
        var string: String {
            root.strings[0].value
        }
    }

    struct _Image: ReflectionTree {
        let root: ReflectionNode
        
        var name: String {
            root.strings[0].value
        }
    }
    
    struct _Button: ReflectionTree {
        let root: ReflectionNode
        
        func tap() {
            root.actions[0].value()
        }
    }
    
    struct _Toggle: ReflectionTree {
        let root: ReflectionNode
        
        private enum DummyEnum {
            case case0
            case case1
        }
        
        var isOn: Binding<Bool> {
            let binding = root.bindings[0]
            if let boolBinding = binding.root.object as? Binding<Bool> {
                return boolBinding
            }
            let dummyBinding = CastingUtils.memoryCast(binding.root.object, Binding<DummyEnum>.self)
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
}
