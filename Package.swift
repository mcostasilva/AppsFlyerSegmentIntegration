// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppsFlyerSegmentIntegration",
	platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppsFlyerSegmentIntegration",
            targets: ["AppsFlyerSegmentIntegration"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
		.package(name: "Segment", url: "https://github.com/segmentio/analytics-ios", .upToNextMajor(from: "4.1.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AppsFlyerSegmentIntegration",
			dependencies: ["Segment", "AppsFlyerLib"],
			sources: ["AppsFlyerSegmentIntegration"],
			publicHeadersPath: "AppsFlyerSegmentIntegration",
			cSettings: [
				.headerSearchPath("AppsFlyerSegmentIntegration")
			]
		),
		.binaryTarget(name: "AppsFlyerLib", url: "https://github.com/AppsFlyerSDK/appsflyer-apple-sdk-qa/releases/download/6.3.0.4/AppsFlyerLib.xcframework.zip", checksum: "93ee34aa2acf502ad83d5d307eb098cd5698565437b776f40139a3bec77dd73e"),
        .testTarget(
            name: "AppsFlyerSegmentIntegrationTests",
            dependencies: ["AppsFlyerSegmentIntegration"]),
    ]
)
