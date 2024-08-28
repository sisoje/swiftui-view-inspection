import SwiftUI
@testable import ViewHosting

// this silences the "notification is not sendable" warning
#if swift(>=6.0)
extension Notification: @unchecked @retroactive Sendable {}
#else
extension Notification: @unchecked Sendable {}
#endif

extension View {
    @discardableResult @MainActor static func getTestView(timeout: TimeInterval = 1) async throws -> Self {
        // normally we get notification immediately but if there is any problem we dont want to wait forever
        let timeoutTask = Task {
            try await Task.sleep(nanoseconds: UInt64(timeout * 1_000_000_000))
            // if timeout happens we post nil to unblock the await
            NotificationCenter.default.post(name: .bodyEvaluation, object: nil)
        }
        defer { timeoutTask.cancel() }
        for await n in NotificationCenter.default.notifications(named: .bodyEvaluation) {
            guard let v = n.object else {
                throw NSError(domain: "Add 'let _ = postBodyEvaluationNotification()' and refer to the state inside the body", code: 0)
            }
            guard let v = v as? Self else {
                continue
            }
            return v
        }
        fatalError()
    }
}
