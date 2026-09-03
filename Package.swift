// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "1.0.0"

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
                 from: "11.0.0"),
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
                "https://github.com/Aniview/display-ads-ios-spm/releases/download/v\(artifactVersion)/display-ads-ios-sdk.zip",
            checksum: "e20ddb408e945d70333423c393ecf352c70bd0ee064c9e4d13cdf73f70fc4a39"
        )
    ]
)
