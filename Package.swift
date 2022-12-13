// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: "SPMDemoPackage",
    platforms: [
           .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMDemo",
            targets: ["SPMDemoPackageWrapper"]),
    ],
    targets: [
        .binaryTarget(
            name: "DeviceRisk",
            url: "https://github.com/theonepa1/SPMDemoPackage/raw/main/socure-device-risk-2.0.1.zip",
            checksum: "113278382469bfa045237fa2c99980c0c861741c5a52a044ab482df4ff6d37ae"
        ),
        .binaryTarget(
            name: "DeviceRisk",
            url: "https://github.com/theonepa1/SPMDemoPackage/raw/main/TrustKit.xcframework.zip",
            checksum: "22e56103b3399feaac9c2ce86bd17c3bb8f2d012ec7644b6dc38886b15a5c821"
        ),
        .target(
            name: "SPMDemoPackageWrapper",
            dependencies: [
                .target(name: "DeviceRisk"),
                .target(name: "TrustKit")
            ],
            path: "SPMDemoPackageWrapper"
        ),
    ]
)
