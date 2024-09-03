import SwiftUI

extension Binding {
    static func variable<T>(_ initial: T) -> Binding<T> {
        nonisolated(unsafe) var temp = initial
        return Binding<T> {
            temp
        } set: {
            temp = $0
        }
    }
}
