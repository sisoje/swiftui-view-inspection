import SwiftUI

extension InspectableType._Slider {
    var binding: Binding<Double> {
        get throws {
            try node.one(.binding).tryCast()
        }
    }
}
