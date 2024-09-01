import ProjectDescription

let dest: Set<Destination> = [.iPhone, .mac, .macCatalyst, .appleWatch, .appleTv, .appleVision]

let project = Project(
    name: "HostApp",
    targets: [
        .target(
            name: "HostApp",
            destinations: dest,
            product: .app,
            bundleId: "io.tuist.HostApp",
            infoPlist: .default,
            sources: ["HostAppMain.swift"],
            resources: [],
            dependencies: [
                // ViewHosting goes to the app target
                 .package(product: "ViewHosting")
            ],
            additionalFiles: [
                .folderReference(path: "..")
            ]
        ),
        .target(
            name: "HostAppTests",
            destinations: dest,
            product: .unitTests,
            bundleId: "io.tuist.HostAppTests",
            infoPlist: .default,
            sources: ["HostAppTests.swift"],
            resources: [],
            dependencies: [
                .target(name: "HostApp"),
                // ViewTesting goes to the unit test target
                .package(product: "ViewTesting")
            ]
        ),
    ]
)
