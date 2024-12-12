// swift-tools-version:6.0
import PackageDescription

let package = Package(
        name: "SovrYaP3",
        products: [
            .executable(name: "SovrYaP3", targets: ["MathOperations"]),
        ],
        dependencies: [],
        targets: [
            .target(
                    name: "MathOperations",
                    dependencies: []),
        ]
)
