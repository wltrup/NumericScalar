// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NumericScalar",
    products: [
        .library(
            name: "NumericScalar",
            targets: ["NumericScalar"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NumericScalar",
            dependencies: []),
        .testTarget(
            name: "NumericScalarTests",
            dependencies: ["NumericScalar"]),
    ]
)