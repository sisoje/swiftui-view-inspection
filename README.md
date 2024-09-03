# SwiftUI View Testing Framework

[![Swift](https://github.com/sisoje/swiftui-native/actions/workflows/swift.yml/badge.svg)](https://github.com/sisoje/swiftui-native/actions/workflows/swift.yml)

## Introduction

This framework provides a powerful solution for testing SwiftUI views, with a particular focus on testing views with changing state. It offers tools for hosting and observing SwiftUI components, enabling developers to verify the correctness and behavior of their user interfaces throughout the view lifecycle.

## Key Features

- **View Hosting**: APIs for hosting views during tests, ensuring controlled testing environments.
- **State Change Testing**: Easily test views with changing state, including `@State`, `@Binding`, and other property wrappers.
- **Lifecycle Event Testing**: Verify the behavior of views during different lifecycle events such as `task` and `onAppear`.
- **Asynchronous Testing**: Support for testing asynchronous operations in SwiftUI views.
- **Navigation Testing**: Capabilities to test NavigationStack and navigation flow.

## Project Structure

The project is structured as follows:

- `HostApp/`: Contains the host application for testing
  - `HostAppMain.swift`: Defines the main app entry point as an extension of ViewHostingApp
  - `HostAppTests.swift`: Empty file needed for the test target (all test cases are implemented in the ViewHostingTests framework)
- `Sources/`: Contains the main source code for the framework
  - `ViewHostingApp/`: Core hosting functionality
  - `ViewHostingTests/`: Testing utilities and extensions

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
@testable import ViewHostingApp
import ViewHostingTests
```

## Usage Guide

### Testing Navigation

Here's an example of how to test navigation using NavigationStack:

```swift
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
```

### Testing Task

Test asynchronous operations using the `task` modifier:

```swift
@MainActor func testTask() async throws {
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
```

## Advanced Features

- **Body Evaluation Observation**: Use `postBodyEvaluation()` and `onBodyEvaluation()` to track view updates.
- **Hosted View Testing**: Utilize `hostedView` for testing views with internal state in a controlled environment.

## Future Development

We are planning to develop ViewInspection features, which will provide more detailed introspection capabilities for SwiftUI views. Stay tuned for updates!

## Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository and create your branch from `main`.
2. Ensure your code follows the existing style and architecture.
3. Write unit tests for your changes.
4. Run all tests to ensure they pass.
5. Submit a pull request with a clear description of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
