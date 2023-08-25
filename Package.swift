// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppFoundations",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .tvOS(.v16),
    ],
    products: [
        .library(
            name: "AppFoundations",
            targets: ["AppFoundations"]),
    ],
    targets: [
        .target(
            name: "AppFoundations",
            dependencies: []),
        .testTarget(
            name: "AppFoundationsTests",
            dependencies: ["AppFoundations"]),
    ]
)
