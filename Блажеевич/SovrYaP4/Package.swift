// swift-tools-version:5.3
import PackageDescription

let package = Package(
        name: "SovrYaP4",
        products: [
            .executable(name: "SovrYaP4", targets: ["SovrYaP4"]),
        ],
        dependencies: [],
        targets: [
            .target(
                    name: "SovrYaP4",
                    dependencies: ["Validation"]),
            .target(
                    name: "Validation",
                    dependencies: []),
        ]
)
