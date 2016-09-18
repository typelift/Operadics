import PackageDescription

let package = Package(name: "Operadics")

let operadics = Product(name: "Operadics", type: .Library(.Dynamic), modules: "Operadics")
products.append(operadics)
