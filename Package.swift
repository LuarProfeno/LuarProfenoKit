// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "LuarProfenoKit",
    products: [
        .library(
            name: "LuarProfenoKit",
            targets: ["LuarProfenoKit"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "LuarProfenoKit",
            dependencies: []),
        .testTarget(
            name: "LuarProfenoKitTests",
            dependencies: ["LuarProfenoKit"]),
    ]
)
