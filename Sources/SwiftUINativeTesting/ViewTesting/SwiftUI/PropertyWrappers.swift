import SwiftUI

typealias BindingReflection = GenericNodeReflection<Binding<Any>>
typealias StateReflection = GenericNodeReflection<State<Any>>
typealias EnvironmentReflection = GenericNodeReflection<Environment<Any>>
class DummyObservableObject: ObservableObject {}
typealias EnvironmentObjectReflection = GenericNodeReflection<EnvironmentObject<DummyObservableObject>>
