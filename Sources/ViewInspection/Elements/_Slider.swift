import SwiftUI

extension InspectableType._Slider {
    var value: Binding<Double> {
        get throws {
            try node.one(.binding).tryCast()
        }
    }
}
