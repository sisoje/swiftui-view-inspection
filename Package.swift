// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ViewTesting",
    platforms:  [.iOS(.v15), .macOS(.v12), .tvOS(.v15), .watchOS(.v8)] + [.visionOS(.v1)],
    products: [
        .library(
            name: "ViewHosting",
            targets: ["ViewHosting"]
        ),
        .library(
            name: "ViewTesting",
            targets: ["ViewTesting"]
        ),
    ],
    targets: [
        .target(
            name: "ViewHosting",
            swiftSettings: [.enableExperimentalFeature("StrictConcurrency")]
        ),
        .target(
            name: "ViewTesting",
            dependencies: ["ViewHosting"],
            swiftSettings: [.enableExperimentalFeature("StrictConcurrency")]
        ),
    ]
)
