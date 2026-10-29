// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "native_flutter_proxy",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "native-flutter-proxy", targets: ["native_flutter_proxy"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "native_flutter_proxy",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
