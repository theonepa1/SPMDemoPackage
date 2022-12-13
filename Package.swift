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
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/datatheorem/TrustKit.git", from: "2.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "DeviceRisk",
            url: "https://github.com/theonepa1/SPMDemoPackage/raw/main/socure-device-risk-2.0.1.zip",
            checksum: "113278382469bfa045237fa2c99980c0c861741c5a52a044ab482df4ff6d37ae"
        ),
        .target(
            name: "SPMDemoPackageWrapper",
            dependencies: [
                .target(name: "DeviceRisk"),
                .product(name: "TrustKitDynamic", package: "TrustKit")
            ],
            path: "SPMDemoPackageWrapper"
        ),
    ]
)
