import SwiftUI
import XCTest

final class ViewLifecycleTests: XCTestCase {}

@MainActor extension ViewLifecycleTests {
    @available(iOS 16, macOS 13, tvOS 16, watchOS 9, *)
    func testNavigation() async throws {
        struct One: View {
            @State var numbers: [Int] = []
            var body: some View {
                let _ = postBodyEvaluation()
                NavigationStack(path: $numbers) {
                    Text("One")
                        .navigationDestination(
                            for: Int.self,
                            destination: Two.init
                        )
                }
            }
        }

        struct Two: View {
            let number: Int
            var body: some View {
                let _ = postBodyEvaluation()
                Text(number.description)
            }
        }
        
        let one = try await One.hostedView { One() }
        one.numbers.append(1)
        try await Two.onBodyEvaluation()
    }
    
    func testOnAppear() async throws {
        struct DummyView: View {
            @State var number = 0
            var body: some View {
                let _ = postBodyEvaluation()
                Text(number.description).onAppear { number += 1 }
            }
        }
        
        let view = try await DummyView.hostedView { DummyView() }
        XCTAssertEqual(view.number, 1)
    }
    
    func testTask() async throws {
        struct DummyView: View {
            @State var number = 0
            var body: some View {
                let _ = postBodyEvaluation()
                Text(number.description).task { number = number + 1 }
            }
        }
        
        let view = try await DummyView.hostedView { DummyView() }
        XCTAssertEqual(view.number, 0)
        try await DummyView.onBodyEvaluation()
        XCTAssertEqual(view.number, 1)
    }
    
    func testObserveBodyEvaluation() async throws {
        struct DummyView: View {
            var body: some View {
                let _ = postBodyEvaluation()
                ProgressView()
            }
        }
        
        _ = try await DummyView.hostedView { DummyView() }
        
        do {
            try await DummyView.onBodyEvaluation()
            XCTFail("we expected this to fail")
        } catch {}
    }
    
    func testWrongView() async {
        struct DummyView: View {
            var body: some View {
                let _ = postBodyEvaluation()
                ProgressView()
            }
        }
        
        do {
            _ = try await Text.hostedView { DummyView() }
            XCTFail("we expected this to fail")
        } catch {}
    }
}
