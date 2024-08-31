import SwiftUI
import XCTest

final class ViewLifecycleTests: XCTestCase {}

@MainActor extension ViewLifecycleTests {
    @available(iOS 16, *) func testNavigation() async throws {
        struct One: View {
            @State private var numbers: [Int] = []
            var body: some View {
                let _ = postBodyEvaluation()
                NavigationStack(path: $numbers) {
                    Button("One") { numbers.append(1) }
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
        one.body.reflectionTree.buttons[0].tap()
        
        let two = try await Two.observeBodyEvaluation()
        XCTAssertEqual(two.body.reflectionTree.texts[0].string, "1")
    }
    
    func testOnAppear() async throws {
        struct DummyView: View {
            @State private var number = 0
            var body: some View {
                let _ = postBodyEvaluation()
                Text(number.description).onAppear { number += 1 }
            }
        }
        
        let view = try await DummyView.hostedView { DummyView() }
        XCTAssertEqual(view.body.reflectionTree.texts[0].string, "1")
    }
    
    func testTask() async throws {
        struct DummyView: View {
            @State private var number = 0
            var body: some View {
                let _ = postBodyEvaluation()
                Text(number.description).task { number = number + 1 }
            }
        }
        
        let view = try await DummyView.hostedView { DummyView() }
        XCTAssertEqual(view.body.reflectionTree.texts[0].string, "0")
        
        try await DummyView.observeBodyEvaluation()
        XCTAssertEqual(view.body.reflectionTree.texts[0].string, "1")
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
            try await DummyView.observeBodyEvaluation()
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
