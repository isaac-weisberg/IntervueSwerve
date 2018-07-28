// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "IntervueSwerve",
    products: [
        .library(
            name: "IntervueCore",
            targets: [ "IntervueCore" ]
        ),
        .executable(
            name: "IntervueSwerve",
            targets: [ "IntervueSwerve" ]),
    ],
    dependencies: [
        .package(url: "https://github.com/OpenKitten/MongoKitten.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "IntervueCore",
            dependencies: [ "MongoKitten" ]),
        .target(
            name: "IntervueSwerve",
            dependencies: [ "IntervueCore" ])
    ]
)
