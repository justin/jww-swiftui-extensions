// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "JWWSwiftUI",
    platforms: [
        .iOS(.v16),
        .macOS(.v12),
        .tvOS(.v16),
        .watchOS(.v9)
    ],
    products: [
        .library(name: "JWWSwiftUI", targets: ["JWWSwiftUI"]),
    ],
    targets: [
        .target( name: "JWWSwiftUI"),
        .testTarget(name: "JWWSwiftUITests", dependencies: ["JWWSwiftUI"])
    ]
)
