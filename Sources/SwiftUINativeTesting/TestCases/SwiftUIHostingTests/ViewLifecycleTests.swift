import SwiftUI
@testable import SwiftUINative
import XCTest

final class ViewLifecycleTests: HostingTestsBase {}

@MainActor extension ViewLifecycleTests {
    func testOnAppear() async throws {
        struct DummyView: View {
            @State var number = 0
            var body: some View {
                let _ = postBodyEvaluationNotification()
                ProgressView().onAppear {
                    number += 1
                }
            }
        }
        
        ViewHostingService.hostView {
            DummyView()
        }
        
        let view = try await DummyView.getTestView()
        XCTAssertEqual(view.number, 1)
    }
    
    func testTask() async throws {
        struct DummyView: View {
            @State var number = 0
            var body: some View {
                let _ = postBodyEvaluationNotification()
                Text(number.description).task {
                    number = await .asyncInc(number)
                }
            }
        }
        
        ViewHostingService.hostView {
            DummyView()
        }
        
        let view = try await DummyView.getTestView()
        XCTAssertEqual(view.number, 0)
        try await DummyView.getTestView()
        XCTAssertEqual(view.number, 1)
    }
}

