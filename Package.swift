// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FFmpegKitSPM",
    platforms: [
        .iOS(.v12), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "FFmpegKitSPM",
            targets: ["FFmpegWrapper"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "ffmpegkit",
            path: "./xcframeworks/ffmpegkit.xcframework"
        ),
        .binaryTarget(
            name: "libavcodec",
            path: "./xcframeworks/libavcodec.xcframework"
        ),
        .binaryTarget(
            name: "libavdevice",
            path: "./xcframeworks/libavdevice.xcframework"
        ),
        .binaryTarget(
            name: "libavfilter",
            path: "./xcframeworks/libavfilter.xcframework"
        ),
        .binaryTarget(
            name: "libavformat",
            path: "./xcframeworks/libavformat.xcframework"
        ),
        .binaryTarget(
            name: "libavutil",
            path: "./xcframeworks/libavutil.xcframework"
        ),
        .binaryTarget(
            name: "libswresample",
            path: "./xcframeworks/libswresample.xcframework"
        ),
        .binaryTarget(
            name: "libswscale",
            path: "./xcframeworks/libswscale.xcframework"
        ),
        .target(
            name: "FFmpegWrapper",
            dependencies: [
                "ffmpegkit",
                "libavcodec",
                "libavdevice",
                "libavfilter",
                "libavformat",
                "libavutil",
                "libswresample",
                "libswscale"
            ]
        )
    ]
)
