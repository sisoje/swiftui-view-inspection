import SwiftUI

enum Elements {
    enum UI {
        typealias _Text = TypeDerivedElement<Text>
        typealias _Image = TypeDerivedElement<Image>
        typealias _Button = TypeDerivedElement<Button<AnyView>>
        typealias _Toggle = TypeDerivedElement<Toggle<AnyView>>
    }
    
    enum Modifiers {
        struct _Refreshable: ReflectionElement { let node: ReflectionNode }
        struct _Task: ReflectionElement { let node: ReflectionNode }
        struct _OnAppear: ReflectionElement { let node: ReflectionNode }
    }
    
    enum PropertyWrappers {
        final class DummyObservableObject: ObservableObject {}
        typealias _State = TypeDerivedElement<State<Any>>
        typealias _Binding = TypeDerivedElement<Binding<Any>>
        typealias _Environment = TypeDerivedElement<Environment<Any>>
        typealias _EnvironmentObject = TypeDerivedElement<EnvironmentObject<DummyObservableObject>>
    }
    
    enum Native {
        typealias _Bool = TypeDerivedElement<Bool>
        typealias _String = TypeDerivedElement<String>
        typealias _closure = TypeDerivedElement<()->Void>
        typealias _asyncClosure = TypeDerivedElement<() async -> Void>
    }
}
