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
            targets: ["DeviceRisk"]),
        .library(
            name: "SPMDemo",
            targets: ["SPMDemoPackageWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "DeviceRisk",
            path: "Frameworks/DeviceRisk.xcframework"
        ),
        .binaryTarget(
            name: "SDTrustKit",
            path: "Frameworks/TrustKit.xcframework"
        ),
        .target(
            name: "SPMDemoPackageWrapper",
            dependencies: [
                .target(name: "DeviceRisk"),
                .target(name: "SDTrustKit")
            ],
            path: "SPMDemoPackageWrapper"
        ),
    ]
)
