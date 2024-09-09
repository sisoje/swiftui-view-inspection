// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ViewInspection",
    platforms: [.iOS(.v15), .macOS(.v12), .tvOS(.v15), .watchOS(.v8), .visionOS(.v1)],
    products: [
        .library(
            name: "ViewInspection",
            targets: ["ViewInspection"]
        ),
    ],
    targets: [
        .target(
            name: "ViewInspection",
            swiftSettings: [.enableExperimentalFeature("StrictConcurrency")]
        ),
        .testTarget(
            name: "ViewInspectionTests",
            dependencies: ["ViewInspection"],
            swiftSettings: [.enableExperimentalFeature("StrictConcurrency")]
        ),
    ]
)
