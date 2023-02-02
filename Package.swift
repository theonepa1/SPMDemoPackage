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
        .library(
            name: "SPMDemoNoTrustKit",
            targets: ["DeviceRisk"])
    ],
    targets: [
        .binaryTarget(
            name: "DeviceRisk",
            path: "Frameworks/DeviceRisk.xcframework"
        ),
        .binaryTarget(
            name: "TrustKit",
            path: "Frameworks/TrustKit.xcframework"
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
