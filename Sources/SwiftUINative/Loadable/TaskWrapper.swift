import SwiftUI

struct TaskWrapper {
    fileprivate nonisolated(unsafe) static var debugIds: Set<UUID> = []
    var id = UUID()
    var asyncFunction: @Sendable () async -> Void = {}
}

extension Binding<TaskWrapper> {
    func load(_ asyncFunc: @escaping @Sendable () async -> Void) {
        assert(TaskWrapper.debugIds.remove(wrappedValue.id) != nil, "task modifier needs to be applied first")
        wrappedValue = TaskWrapper(asyncFunction: asyncFunc)
    }
}

extension View {
    @ViewBuilder func taskWrapper(_ wrapper: TaskWrapper) -> some View {
        let _ = assert(TaskWrapper.debugIds.insert(wrapper.id).memberAfterInsert.uuidString.isContiguousUTF8, "mark task modifier as applied")
        task(id: wrapper.id, wrapper.asyncFunction)
    }

    @ViewBuilder func taskWrapper(_ wrapper: Binding<TaskWrapper>) -> some View {
        taskWrapper(wrapper.wrappedValue)
            .onDisappear {
                wrapper.wrappedValue = .init()
            }
    }
}
