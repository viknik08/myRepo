// swift-tools-version: 5.10
import PackageDescription



let package = Package(
    name: "MyModelPackage",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MyModelPackage",
            targets: ["MyModelPackage"]),
    ],
    targets: [
        .target(
            name: "MyModelPackage",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "MyModelPackageTests",
            dependencies: ["MyModelPackage"]),
    ]
)
