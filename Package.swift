// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "1.2.0"

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
    ],
    targets: [
        .target(
            name: "DisplayAdsSDKTarget",
            dependencies: [
                .target(name: "DisplayAdsSDK"),
                .product(name: "GoogleMobileAds",
                         package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "PlaceHolder"
        ),
        .binaryTarget(
            name: "DisplayAdsSDK",
            url:
                "https://github.com/Aniview/display-ads-ios-spm/releases/download/v\(artifactVersion)/DisplayAds.zip",
            checksum: "59da403558f7ddf68e5409e1f3fe686a8494fbeae16a3f90e19c362fb8578362"
        )
    ]
)
