# SwiftUI View Inspection Framework

[![Swift](https://github.com/sisoje/swiftui-view-inspection/actions/workflows/swift.yml/badge.svg)](https://github.com/sisoje/swiftui-view-inspection/actions/workflows/swift.yml)

## Introduction

This framework provides powerful tools for inspecting SwiftUI views in unit tests. It allows developers to examine the structure of their views, access individual elements, and simulate user interactions, all within a testing environment.

## Key Features

- **View Structure Inspection**: Examine the hierarchy and composition of SwiftUI views.
- **Element Access**: Easily access specific elements within a view for verification.
- **Interaction Simulation**: Simulate user interactions like taps, toggles, and text input.
- **State Inspection**: Verify the state of views and their subcomponents.
- **Modifier Inspection**: Examine and test view modifiers like `onAppear`, `task`, and custom modifiers.

## Installation

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/sisoje/swiftui-view-inspection.git", from: "1.0.0")
]
```

Then, import the framework in your test files:

```swift
import XCTest
import SwiftUI
@testable import ViewInspection
```

## Usage Guide

### Inspecting a View

To inspect a view:

```swift
let view = Text("Hello, World!")
let snapshot = view.snapshot

XCTAssertEqual(snapshot.oneElement(TestElement.View._Text.self).string, "Hello, World!")
```

### Testing Interactions

To test a button tap:

```swift
var b = false
Button("") { b = true }.snapshot.oneElement(TestElement.View._Button.self).tap()
XCTAssertEqual(b, true)
```

### Examining Modifiers

To test an `task` modifier:

```swift
var x = 0
await EmptyView().task { x = 1 }.snapshot.oneElement(TestElement.Modifier._Task.self).doTask()
XCTAssertEqual(x, 1)
```

## Advanced Features

- **Reflection-based Inspection**: Uses Swift's reflection capabilities to inspect view structures.
- **Type-safe Element Access**: Strongly-typed access to view elements and modifiers.
- **Comprehensive SwiftUI Support**: Covers a wide range of SwiftUI components and modifiers.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository and create your branch from `main`.
2. Add or update tests for any new or changed functionality.
3. Ensure your code follows the existing style and passes all tests.
4. Create a pull request with a clear description of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
