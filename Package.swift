// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "ViewInspection",
    platforms: [.iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)] + [.visionOS(.v1)],
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
