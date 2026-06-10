// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GestureRecognizerClosures",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
    ],
    products: [
        .library(
            name: "GestureRecognizerClosures",
            targets: ["GestureRecognizerClosures"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble.git", from: "13.0.0"),
    ],
    targets: [
        .target(
            name: "GestureRecognizerClosures",
            path: "GestureRecognizerClosures",
            exclude: [
                "Info.plist",
                "GestureRecognizerClosures.h",
            ]
        ),
        .testTarget(
            name: "GestureRecognizerClosuresTests",
            dependencies: [
                "GestureRecognizerClosures",
                "Nimble",
            ],
            path: "GestureRecognizerClosuresTests",
            exclude: [
                "Info.plist",
            ]
        ),
    ]
)
