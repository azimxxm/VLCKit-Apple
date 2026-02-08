// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "VLCKitApple",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "VLCKitApple",
            targets: ["VLCKitApple"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MobileVLCKit",
            path: "MobileVLCKit.xcframework"
        ),
        .binaryTarget(
            name: "TVVLCKit",
            path: "TVVLCKit.xcframework"
        ),
        .binaryTarget(
            name: "VLCKit",
            path: "VLCKit.xcframework"
        ),
        .target(
            name: "VLCKitApple",
            dependencies: [
                .target(name: "MobileVLCKit", condition: .when(platforms: [.iOS])),
                .target(name: "TVVLCKit", condition: .when(platforms: [.tvOS])),
                .target(name: "VLCKit", condition: .when(platforms: [.macOS]))
            ]
        )
    ]
)
