// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ripemd160",
    products: [
        .library(
            name: "ripemd160",
            targets: ["ripemd160"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ripemd160",
            dependencies: []),
        .testTarget(
            name: "ripemd160Tests",
            dependencies: ["ripemd160"]),
    ]
)
