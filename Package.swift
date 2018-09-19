// swift-tools-version:4.2

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
