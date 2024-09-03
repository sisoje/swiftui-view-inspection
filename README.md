# SwiftUI View Hosting Framework

[![Swift](https://github.com/sisoje/swiftui-native/actions/workflows/swift.yml/badge.svg)](https://github.com/sisoje/swiftui-native/actions/workflows/swift.yml)

## Introduction

This framework provides a powerful solution for hosting and testing SwiftUI views, focusing on testing views with mutable state and interaction within their natural lifecycle. The framework offers utilities to host views, observe lifecycle changes, and interact with SwiftUI components in a seamless manner during tests.

## Key Features (ViewHostingApp)

- **State Change Testing**: Easily test views with changing state, including `@State`, `@Binding`, and other property wrappers.
- **Lifecycle Event Testing**: Verify the behavior of views during different lifecycle events such as `task`.
- **Asynchronous Testing**: Support for testing asynchronous operations in SwiftUI views.
- **View Hosting**: APIs for hosting views during tests, ensuring controlled testing environments.
- **Navigation Testing**: Capabilities to test `NavigationStack` and navigation flows.
- **Interactive Element Testing**: Test buttons, toggles, and other interactive SwiftUI components.

## Project Structure

The project is structured as follows:

- `HostApp/`: Contains the host application generated via Tuist for performing tests.
  - `HostAppMain.swift`: Defines the main app entry point as an extension of `ViewHostingApp`.
  - `HostAppTests.swift`: Empty file for the test target (most test cases are implemented in the `ViewHostingApp`).
- `Sources/`: Contains the main source code for the framework.
  - `ViewHostingApp/`: Core hosting functionality.
  - `ViewHostingTests/`: Testing utilities and extensions.

**Note**: Some elements related to view inspection are still under development and will be covered in future updates.

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

## Usage Guide (ViewHostingApp)

### Testing Navigation

Here's an example of how to test navigation using `NavigationStack`:

```swift
func testNavigation() async throws {
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
    one.body.reflectionSnapshot.buttons[0].tap()

    let two = try await Two.observeBodyEvaluation()
    XCTAssertEqual(two.body.reflectionSnapshot.texts[0].string, "1")
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
    XCTAssertEqual(view.body.reflectionSnapshot.texts[0].string, "0")

    try await DummyView.observeBodyEvaluation()
    XCTAssertEqual(view.body.reflectionSnapshot.texts[0].string, "1")
}
```

### Testing Interactive Elements

Test toggles and other interactive elements effectively:

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
    view.body.reflectionSnapshot.toggles[0].toggle()
    XCTAssertEqual(view.isOn, true)
}
```

## TODO (ViewInspection)

The `ViewInspection` framework is currently marked as future work, with planned features including:

- **Reflection & Introspection**: Deeper introspection into SwiftUI view hierarchy.
- **Element Testing**: Functions targeting static and dynamic elements within a view.
- **Modifier Testing**: Tools to inspect and interact with SwiftUI modifiers.
- **Enhanced Property Wrapper Support**: Richer abstraction for `@State`, `@Binding`, `@Environment`, and custom property wrappers.

These features will be addressed in upcoming releases.

---

## Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository and create your branch from `main`.
2. Ensure your code follows the existing style and architecture.
3. Write unit tests for your changes.
4. Run all tests to ensure they pass.
5. Submit a pull request with a clear description of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
