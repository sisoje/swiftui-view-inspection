# SwiftUI View Testing Framework

[![Swift](https://github.com/sisoje/swiftui-native/actions/workflows/swift.yml/badge.svg)](https://github.com/sisoje/swiftui-native/actions/workflows/swift.yml)

## Introduction

This framework provides a powerful solution for testing SwiftUI views, with a particular focus on testing views with changing state. It offers tools for introspection, reflection, and interaction with SwiftUI components, enabling developers to verify the correctness and behavior of their user interfaces throughout the view lifecycle.

## Key Features

- **State Change Testing**: Easily test views with changing state, including `@State`, `@Binding`, and other property wrappers.
- **Lifecycle Event Testing**: Verify the behavior of views during different lifecycle events such as `onAppear` and `task`.
- **Asynchronous Testing**: Support for testing asynchronous operations in SwiftUI views.
- **View Hosting**: APIs for hosting views during tests, ensuring controlled testing environments.

## Installation

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/sisoje/swiftui-native.git", from: "1.0.0")
]
```

Then, import the frameworks in your test files:

```swift
import ViewTesting
@testable import ViewHosting
```

## Usage Guide: Testing Views with Changing State

### Step 1: Set Up Your Test Environment

First, ensure your test class inherits from `HostedViewsTestsBase`:

```swift
class MyViewTests: HostedViewsTestsBase {}
```

This base class provides the necessary setup for hosting your views during tests.

### Step 2: Create Your Test View

Define a view that includes the state changes you want to test. For example:

```swift
struct DummyView: View {
    @State var number = 0
    var body: some View {
        let _ = postBodyEvaluation()
        Text(number.description).task {
            number = number + 1
        }
    }
}
```

Note the `postBodyEvaluation()` call, which is crucial for our testing framework to observe state changes.

### Step 3: Host Your View

In your test method, use `ViewHostingApp.hostView` to host your view:

```swift
@MainActor func testStateChange() async throws {
    ViewHostingApp.hostView {
        DummyView()
    }
    // ... rest of the test
}
```

### Step 4: Observe and Assert State Changes

Use the `observeBodyEvaluation()` method to capture the view's state at different points:

```swift
let initialView = try await DummyView.observeBodyEvaluation()
XCTAssertEqual(initialView.number, 0)

// Wait for the task to complete and trigger a state change
try await DummyView.observeBodyEvaluation()
XCTAssertEqual(initialView.number, 1)
```

### Complete Example

Here's a full example demonstrating how to test a view with changing state:

```swift
import XCTest
import SwiftUI
@testable import ViewHosting
import ViewTesting

final class ViewLifecycleTests: HostedViewsTestsBase {
    @MainActor func testTask() async throws {
        struct DummyView: View {
            @State var number = 0
            var body: some View {
                let _ = postBodyEvaluation()
                Text(number.description).task {
                    number = number + 1
                }
            }
        }

        ViewHostingApp.hostView {
            DummyView()
        }

        let view = try await DummyView.observeBodyEvaluation()
        XCTAssertEqual(view.number, 0)
        try await DummyView.observeBodyEvaluation()
        XCTAssertEqual(view.number, 1)
    }
}
```

This test verifies that:
1. The initial state of `number` is 0.
2. After the `task` modifier runs, `number` is incremented to 1.

## Advanced Testing Scenarios

### Testing onAppear

You can also test state changes triggered by `onAppear`:

```swift
@MainActor func testOnAppear() async throws {
    struct DummyView: View {
        @State var number = 0
        var body: some View {
            let _ = postBodyEvaluation()
            ProgressView().onAppear {
                number += 1
            }
        }
    }

    ViewHostingApp.hostView {
        DummyView()
    }

    let view = try await DummyView.observeBodyEvaluation()
    XCTAssertEqual(view.number, 1)
}
```

### Testing Asynchronous Operations

For testing asynchronous operations, you can use multiple `observeBodyEvaluation` calls:

```swift
@MainActor func testAsyncOperation() async throws {
    struct DummyView: View {
        @State var result: String = ""
        var body: some View {
            let _ = postBodyEvaluation()
            Text(result).task {
                // Simulate async operation
                try? await Task.sleep(nanoseconds: 1_000_000_000)
                result = "Completed"
            }
        }
    }

    ViewHostingApp.hostView {
        DummyView()
    }

    let initialView = try await DummyView.observeBodyEvaluation()
    XCTAssertEqual(initialView.result, "")

    // Wait for the async operation to complete
    let updatedView = try await DummyView.observeBodyEvaluation()
    XCTAssertEqual(updatedView.result, "Completed")
}
```

## Contributing

We welcome contributions! To contribute:

1. Fork the repository and create your branch from `main`.
2. Ensure your code follows the existing style and architecture.
3. Write unit tests for your changes.
4. Run all tests to ensure they pass.
5. Submit a pull request with a clear description of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
