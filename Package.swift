// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Operadics",
    products: [
        .library(name: "Operadics", targets: ["Operadics"]),
    ],
    targets: [
        .target(name: "Operadics")
    ]
)
