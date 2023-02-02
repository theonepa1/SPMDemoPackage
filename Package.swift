// swift-tools-version:5.6
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
        .package(
            url: "https://github.com/datatheorem/TrustKit.git",
            exact: "2.0.0"
        )
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
                "TrustKit"
            ],
            path: "SPMDemoPackageWrapper"
        ),
    ]
)
