// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
let package = Package(
    name: "SPMDemoPackage",
    platforms: [
           .iOS(.v13)
    ],
    products: [
        .library(
            name: "SPMDemo",
            targets: ["SPMDemoPackageWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "DeviceRisk",
            path: "Frameworks/DeviceRisk.xcframework"
        ),
        .target(
            name: "SPMDemoPackageWrapper",
            dependencies: [
                .target(name: "DeviceRisk"),
            ],
            path: "SPMDemoPackageWrapper"
        ),
    ]
)
