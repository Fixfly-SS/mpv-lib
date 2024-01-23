// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "MpvLib",
    defaultLocalization: "en",
    platforms: [.macOS(.v11), .iOS(.v14), .tvOS(.v14)],
    products: [
        .library(
            name: "MpvLib",
            type: .static,
            targets: ["MpvLib"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MpvLib",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", 
                "Libswresample","Libswscale", "Libssl", "Libcrypto", "Libass", 
                "Libfreetype", "Libfribidi", "Libharfbuzz","Libharfbuzz-subset", "Libuchardet", 
                "Libmpv", "Libdovi", "Libluajit", "Libpng", "Libunibreak",
                "Libspirvcross", "LibmoltenVK", "Libshaderc", "Liblcms2", "Libplacebo",
                "Libfontconfig", "Libdav1d","Libbluray",
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .binaryTarget(
            name: "Libavcodec",
            path: "Sources/Libavcodec.xcframework"
        ),
        .binaryTarget(
            name: "Libavdevice",
            path: "Sources/Libavdevice.xcframework"
        ),
        .binaryTarget(
            name: "Libavfilter",
            path: "Sources/Libavfilter.xcframework"
        ),
        .binaryTarget(
            name: "Libavformat",
            path: "Sources/Libavformat.xcframework"
        ),
        .binaryTarget(
            name: "Libavutil",
            path: "Sources/Libavutil.xcframework"
        ),
        .binaryTarget(
            name: "Libswresample",
            path: "Sources/Libswresample.xcframework"
        ),
        .binaryTarget(
            name: "Libswscale",
            path: "Sources/Libswscale.xcframework"
        ),
        .binaryTarget(
            name: "Libssl",
            path: "Sources/Libssl.xcframework"
        ),
        .binaryTarget(
            name: "Libcrypto",
            path: "Sources/Libcrypto.xcframework"
        ),
        .binaryTarget(
            name: "Libass",
            path: "Sources/Libass.xcframework"
        ),
        .binaryTarget(
            name: "Libfreetype",
            path: "Sources/Libfreetype.xcframework"
        ),
        .binaryTarget(
            name: "Libfribidi",
            path: "Sources/Libfribidi.xcframework"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            path: "Sources/Libharfbuzz.xcframework"
        ),
        .binaryTarget(
            name: "Libharfbuzz-subset",
            path: "Sources/Libharfbuzz-subset.xcframework"
        ),
        .binaryTarget(
            name: "Libuchardet",
            path: "Sources/Libuchardet.xcframework"
        ),              
        .binaryTarget(
            name: "Libmpv",
            path: "Sources/Libmpv.xcframework"
        ),
        .binaryTarget(
            name: "Libdovi",
            path: "Sources/Libdovi.xcframework"
        ),
        .binaryTarget(
            name: "Libluajit",
            path: "Sources/Libluajit.xcframework"
        ),
        .binaryTarget(
            name: "Libpng",
            path: "Sources/Libpng.xcframework"
        ),
        .binaryTarget(
            name: "Libspirvcross",
            path: "Sources/Libspirvcross.xcframework"
        ),
        .binaryTarget(
            name: "LibmoltenVK",
            path: "Sources/LibmoltenVK.xcframework"
        ),
        .binaryTarget(
            name: "Libshaderc",
            path: "Sources/Libshaderc.xcframework"
        ),
        .binaryTarget(
            name: "Liblcms2",
            path: "Sources/Liblcms2.xcframework"
        ),
        .binaryTarget(
            name: "Libplacebo",
            path: "Sources/Libplacebo.xcframework"
        ),
        .binaryTarget(
            name: "Libfontconfig",
            path: "Sources/Libfontconfig.xcframework"
        ),
        .binaryTarget(
            name: "Libunibreak",
            path: "Sources/Libunibreak.xcframework"
        ),
        .binaryTarget(
            name: "Libdav1d",
            path: "Sources/Libdav1d.xcframework"
        ),
        .binaryTarget(
            name: "Libbluray",
            path: "Sources/Libbluray.xcframework"
        ),
    ]
)
