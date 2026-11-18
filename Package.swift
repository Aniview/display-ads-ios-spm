// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "1.4.0"

let package = Package(
    name: "display-ads-ios-spm",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "DisplayAdsSDK",
            targets: ["DisplayAdsSDKTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
                 from: "13.0.0"),
        .package(url: "https://github.com/Aniview/ad-player-lite-ios-spm.git",
                 from: "1.15.0"),
    ],
    targets: [
        .target(
            name: "DisplayAdsSDKTarget",
            dependencies: [
                .target(name: "DisplayAdsSDK"),
                .product(name: "GoogleMobileAds",
                         package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AdPlayerLite",
                         package: "ad-player-lite-ios-spm"),
            ],
            path: "PlaceHolder"
        ),
        .binaryTarget(
            name: "DisplayAdsSDK",
            url:
                "https://github.com/Aniview/display-ads-ios-spm/releases/download/v\(artifactVersion)/DisplayAds.zip",
            checksum: "07e0a54be5296db7dc53c8a94001d79f7b77112cf223d75976b6da2c25805ead"
        )
    ]
)
