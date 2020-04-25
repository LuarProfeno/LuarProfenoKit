// swift-tools-version:5.2

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
