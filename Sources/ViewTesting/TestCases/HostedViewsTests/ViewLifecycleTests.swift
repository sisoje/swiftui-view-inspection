import SwiftUI
@testable import ViewHosting
import XCTest

final class ViewLifecycleTests: HostedViewsTestsBase {}

@MainActor extension ViewLifecycleTests {
    func testOnAppear() async throws {
        struct DummyView: View {
            @State var number = 0
            var body: some View {
                let _ = postBodyEvaluation()
                ProgressView().onAppear {
                    number += 1
                }
            }
        }
        
        ViewHostingService.hostView {
            DummyView()
        }
        
        let view = try await DummyView.getBodyEvaluation()
        XCTAssertEqual(view.number, 1)
    }
    
    func testTask() async throws {
        struct DummyView: View {
            @State var number = 0
            var body: some View {
                let _ = postBodyEvaluation()
                Text(number.description).task {
                    number = number + 1
                }
            }
        }
        
        ViewHostingService.hostView {
            DummyView()
        }
        
        let view = try await DummyView.getBodyEvaluation()
        XCTAssertEqual(view.number, 0)
        try await DummyView.getBodyEvaluation()
        XCTAssertEqual(view.number, 1)
    }
}

