// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "composable-core-location",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "ComposableCoreLocation",
      targets: ["ComposableCoreLocation"]
    )
  ],
  dependencies: [
//    .package(
//      url: "https://github.com/pointfreeco/swift-dependencies",
//      .upToNextMajor(from: "1.0.0")
//    ),
//    .package(
//      url: "https://github.com/pointfreeco/swift-concurrency-extras",
//      .upToNextMajor(from: "1.0.0")
//    ),
    .package(
        url: "https://github.com/pointfreeco/swift-composable-architecture.git",
        .upToNextMajor(from: "1.0.0")
    )
  ],
  targets: [
    .target(
      name: "ComposableCoreLocation",
      dependencies: [
//        .product(name: "Dependencies", package: "swift-dependencies"),
//        .product(name: "ConcurrencyExtras", package: "swift-concurrency-extras"),
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
      ]
    ),
    .testTarget(
      name: "ComposableCoreLocationTests",
      dependencies: ["ComposableCoreLocation"]
    ),
  ]
)
