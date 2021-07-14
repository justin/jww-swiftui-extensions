// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "Package",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14)
    ],
    products: [
        .library(name: "Package", targets: ["Package"]),
    ],
    dependencies: [],
    targets: [
        .target( name: "Package"),
        .testTarget(name: "PackageTests", dependencies: ["Package"])
    ]
)
