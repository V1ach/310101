// swift-tools-version:5.3
import PackageDescription

let package = Package(
        name: "SovrYaP2",
        products: [
            .executable(name: "SovrYaP2", targets: ["SovrYaP2"]),
        ],
        dependencies: [],
        targets: [
            .target(
                    name: "SovrYaP2",
                    dependencies: ["RealNumberOperations", "ComplexNumberOperations"]),
            .target(
                    name: "RealNumberOperations",
                    dependencies: []),
            .target(
                    name: "ComplexNumberOperations",
                    dependencies: []),
        ]
)
