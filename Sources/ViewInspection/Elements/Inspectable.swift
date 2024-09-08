import Combine
import SwiftUI

enum Inspectable<T: ReflectionElement> {
    typealias Element = T
    case some
}

// MARK: - views

extension Inspectable {
    typealias _Button = SameBaseElement<Button<Never>>
    static var Button: Inspectable<_Button> { .some }
}

// MARK: - gestures

// MARK: - property wrappers

// MARK: - extensions

extension Inspectable._Button {
    func tap() {
        node.oneElement(TestElement.Value._closure.self).castValue()
    }
}
