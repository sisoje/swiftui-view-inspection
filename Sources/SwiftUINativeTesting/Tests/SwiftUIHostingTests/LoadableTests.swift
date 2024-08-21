import SwiftUI
@testable import SwiftUINative
import XCTest

final class LoadableTests: HostingTestsBase {}

@MainActor extension LoadableTests {
    func testLoadAsync() async throws {
        struct Dummy: View {
            @LoadableState var number = 0
            var state: LoadingState { _number.state }
            var body: some View {
                let _ = postBodyEvaluationNotification()
                ProgressView().task {
                    await _number.loadAsync { await .asyncInc(number) }
                }
                .disabled(_number.state.isLoading)
            }
        }

        ViewHostingService.hostView {
            Dummy()
        }

        let view = try await Dummy.getTestView()
        XCTAssertEqual(view.number, 0)
        XCTAssertEqual(view.state.isLoading, false)
        _ = try await Dummy.getTestView()
        XCTAssertEqual(view.number, 0)
        XCTAssertEqual(view.state.isLoading, true)
        _ = try await Dummy.getTestView()
        XCTAssertEqual(view.number, 1)
        XCTAssertEqual(view.state.isLoading, false)
    }

    func testLoadSync() async throws {
        struct Dummy: View {
            @LoadableState var number = 0
            var state: LoadingState { _number.state }
            var body: some View {
                let _ = postBodyEvaluationNotification()
                ProgressView().onAppear {
                    _number.loadSync { await .asyncInc(number) }
                }
                .taskWrapper(_number.loadable)
                .disabled(_number.state.isLoading)
            }
        }

        ViewHostingService.hostView {
            Dummy()
        }

        let view = try await Dummy.getTestView()
        XCTAssertEqual(view.number, 0)
        XCTAssertEqual(view.state.isLoading, false)
        _ = try await Dummy.getTestView()
        XCTAssertEqual(view.number, 0)
        XCTAssertEqual(view.state.isLoading, true)
        _ = try await Dummy.getTestView()
        XCTAssertEqual(view.number, 1)
        XCTAssertEqual(view.state.isLoading, false)
    }
}
