import SwiftUI

extension Binding {
    static func variable(_ initial: Value) -> Binding<Value> {
        nonisolated(unsafe) var temp = initial
        return Binding<Value> {
            temp
        } set: {
            temp = $0
        }
    }
}
