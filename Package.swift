// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RouteMesh",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "RouteMesh",
            targets: ["RouteMesh"]),
    ],
    targets: [
        .target(
            name: "RouteMesh"),
        .testTarget(
            name: "RouteMeshTests",
            dependencies: ["RouteMesh"]
        ),
    ]
)
