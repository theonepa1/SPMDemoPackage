// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMDemoPackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DeviceRisk",
            targets: ["DeviceRisk"])
    ],
    targets: [
        .binaryTarget(
            name: "DeviceRisk",
            url: "https://sdk.socure.com/socure-sdks/sigma-device/ios/socure-device-risk-4.0.0.zip",
            checksum: "449cca921d09cfc18f890719ae9363a7054e685467a10a41c7c8085b2e3927de"
        )
    ]
)
