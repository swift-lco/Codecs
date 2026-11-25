// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "CodecsTests",
    platforms: [.macOS(.v26)],
    products: [
        .executable(name: "codecstest", targets: ["CodecsTestFlows"]),
    ],
    dependencies: [
        .package(url: "https://github.com/leviouwendijk/Media.git", branch: "master"),
        .package(url: "https://github.com/swift-tooling/TestFlows.git", branch: "master"),
        .package(path: ".."),
    ],
    targets: [
        .executableTarget(
            name: "CodecsTestFlows",
            dependencies: [
                .product(name: "CodecsLAME", package: "Codecs"),
                .product(name: "MediaTranscoding", package: "Media"),
                .product(name: "MediaCore", package: "Media"),
                .product(name: "MediaAV", package: "Media"),
                .product(name: "TestFlows", package: "TestFlows"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
