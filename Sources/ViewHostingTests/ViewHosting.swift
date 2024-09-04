import SwiftUI
@testable import ViewHostingApp

extension View {
    @discardableResult static func onBodyEvaluation(timeout: TimeInterval = 1) async throws -> Self {
        try await NotificationCenter.default.observeBodyEvaluation(timeout: timeout)
    }

    static func host(timeout: TimeInterval = 1, content: () -> any View) async throws -> Self {
        try await ProgressView().appear(timeout: timeout)
        content().host()
        return try await onBodyEvaluation(timeout: timeout)
    }

    func appear(timeout: TimeInterval = 1) async throws {
        let waitOnAppear = Task {
            do {
                try await Task.sleep(nanoseconds: UInt64(timeout * 1_000_000_000))
                throw ViewHostingError.onAppearTimeout
            }
            catch is CancellationError {}
            catch { throw error }
        }
        onAppear(perform: waitOnAppear.cancel).host()
        try await waitOnAppear.value
    }

    func host() {
        ViewHostingApp.shared.view = self
    }
}