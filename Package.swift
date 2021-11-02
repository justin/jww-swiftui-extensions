// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "JWWSwiftUI",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14)
    ],
    products: [
        .library(name: "JWWSwiftUI", targets: ["JWWSwiftUI"]),
    ],
    dependencies: [],
    targets: [
        .target( name: "JWWSwiftUI"),
        .testTarget(name: "JWWSwiftUITests", dependencies: ["JWWSwiftUI"])
    ]
)
