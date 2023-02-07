// swift-tools-version:5.5
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
            name: "SPMDemoNoTrustKit",
            targets: ["DeviceRiskGG"]),
        .library(
            name: "SPMDemo",
            targets: ["SPMDemoPackageWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/datatheorem/TrustKit", from: "2.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "DeviceRiskGG",
            url: "https://sdk.socure.com/socure-sdks/sigma-device/ios/socure-device-risk-2.0.2.zip",
            checksum: "4cd16dbb056dbb9494f9da4ec471b1153e39a44a28be7449506bcc254d02c478"
        ),
        .target(
            name: "SPMDemoPackageWrapper",
            dependencies: [
                .target(name: "DeviceRiskGG"),
                .product(name: "TrustKitDynamic", package: "TrustKit")
            ],
            path: "SPMDemoPackageWrapper"
        ),
    ]
)
