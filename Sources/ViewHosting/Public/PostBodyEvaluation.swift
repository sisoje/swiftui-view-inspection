import SwiftUI

public extension View {
    func postBodyEvaluation() {
        assert({
            Self._printChanges()
            NotificationCenter.default.post(name: .bodyEvaluation, object: self)
        }() == ())
    }
}
