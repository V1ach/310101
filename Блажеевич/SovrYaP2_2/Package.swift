// swift-tools-version:5.3

import PackageDescription

let package = Package(
        name: "SovrYaP2_2",
        products: [
            .executable(name: "SovrYaP2_2", targets: ["SovrYaP2_2"]),
        ],
        dependencies: [],
        targets: [
            .target(
                    name: "SovrYaP2_2",
                    dependencies: ["Validation", "CarNumberLogic"]),
            .target(
                    name: "Validation",
                    dependencies: []),
            .target(
                    name: "CarNumberLogic",
                    dependencies: []),
        ]
)
