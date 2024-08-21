import SwiftUI

@propertyWrapper public struct Loadable: DynamicProperty {
    @State var taskWrapper = TaskWrapper()
    public init() {}
    @State public var wrappedValue = LoadingState()
    public var projectedValue: Binding<LoadingState> { $wrappedValue }
}

@MainActor public extension Loadable {
    func loadAsync(_ asyncThrowingFunc: () async throws -> Void) async {
        DebugLogger.debugLogger?.info("loadAsync started")
        await projectedValue.load(asyncThrowingFunc)
    }

    func loadSync(_ asyncThrowingFunc: @escaping () async throws -> Void) {
        DebugLogger.debugLogger?.info("loadSync started")
        $taskWrapper.load { @MainActor in
            await projectedValue.load(asyncThrowingFunc)
        }
    }
}

public extension View {
    @ViewBuilder func taskWrapper(_ loadable: Loadable) -> some View {
        taskWrapper(loadable.$taskWrapper)
    }
}
