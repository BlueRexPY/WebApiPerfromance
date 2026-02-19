// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SwiftVapor",
    platforms: [
       .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.99.0"),
        .package(url: "https://github.com/vapor/postgres-nio.git", from: "1.21.0"),
        .package(url: "https://github.com/orlandos-nl/MongoKitten.git", from: "7.9.0"),
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "PostgresNIO", package: "postgres-nio"),
                .product(name: "MongoKitten", package: "MongoKitten"),
            ]
        ),
    ]
)
