// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LuarProfenoKit",
    products: [
        .library(name: "LuarProfenoKit", targets: ["LuarProfenoKit"])
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "LuarProfenoKit", dependencies: []),
        .testTarget(name: "LuarProfenoKitTests", dependencies: ["LuarProfenoKit"]),
    ]
)
