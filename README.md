# SwiftUI View Testing Framework

[![Swift](https://github.com/sisoje/swiftui-native/actions/workflows/swift.yml/badge.svg)](https://github.com/sisoje/swiftui-native/actions/workflows/swift.yml)

## Introduction

This framework provides a powerful solution for testing SwiftUI views, with a particular focus on testing views with changing state. It offers tools for introspection, reflection, and interaction with SwiftUI components, enabling developers to verify the correctness and behavior of their user interfaces throughout the view lifecycle.

## Key Features

- **State Change Testing**: Easily test views with changing state, including `@State`, `@Binding`, and other property wrappers.
- **Lifecycle Event Testing**: Verify the behavior of views during different lifecycle events such as `task`.
- **Asynchronous Testing**: Support for testing asynchronous operations in SwiftUI views.
- **View Hosting**: APIs for hosting views during tests, ensuring controlled testing environments.
- **Navigation Testing**: Capabilities to test NavigationStack and navigation flow.
- **Interactive Element Testing**: Test buttons, toggles, and other interactive SwiftUI components.

## Installation

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/sisoje/swiftui-native.git", from: "1.0.0")
]
```

Then, import the frameworks in your test files:

```swift
import SwiftUI
import XCTest
@testable import ViewHosting
import ViewTesting
```

## Usage Guide

### Testing Navigation

Here's an example of how to test navigation using NavigationStack:

```swift
@available(iOS 16, *)
@MainActor func testNavigation() async throws {
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
```

### Testing Task

Test asynchronous operations using the `task` modifier:

```swift
@MainActor func testTask() async throws {
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
```

### Testing Interactive Elements

Test toggles and other interactive elements without hosting the view:

```swift
@MainActor func testToggle() {
    struct DummyView: View {
        @Binding var isOn: Bool
        var body: some View {
            Toggle(isOn: $isOn, label: EmptyView.init)
        }
    }

    let view = DummyView(isOn: .variable(false))
    XCTAssertEqual(view.isOn, false)
    view.body.reflectionTree.toggles[0].toggle()
    XCTAssertEqual(view.isOn, true)
}
```

Note: Views without internal state (like the `DummyView` in this example) do not need to be hosted for testing.

## Advanced Features

- **Body Evaluation Observation**: Use `postBodyEvaluation()` and `observeBodyEvaluation()` to track view updates.
- **Reflection Tree**: Access the `reflectionTree` of your views to inspect their structure and properties.
- **Hosted View Testing**: Utilize `hostedView` for testing views with internal state in a controlled environment.

## Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository and create your branch from `main`.
2. Ensure your code follows the existing style and architecture.
3. Write unit tests for your changes.
4. Run all tests to ensure they pass.
5. Submit a pull request with a clear description of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
