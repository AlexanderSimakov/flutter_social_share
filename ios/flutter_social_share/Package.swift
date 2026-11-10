// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_social_share",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        // If the plugin name contains "_", the library name must use "-".
        .library(name: "flutter-social-share", targets: ["flutter_social_share"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        // Same major as the podspec's FBSDKCoreKit / FBSDKShareKit 18.0.0.
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", "18.0.0"..<"19.0.0")
    ],
    targets: [
        .target(
            name: "flutter_social_share",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "FacebookCore", package: "facebook-ios-sdk"),
                .product(name: "FacebookShare", package: "facebook-ios-sdk")
            ]
        )
    ]
)
