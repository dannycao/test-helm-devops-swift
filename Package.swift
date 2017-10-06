import PackageDescription

let package = Package(
    name: "comptonkuber3",
    targets: [
      Target(name: "comptonkuber3", dependencies: [ .Target(name: "Application") ]),
    ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git",             majorVersion: 1, minor: 7),
        .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git",       majorVersion: 1, minor: 7),
        .Package(url: "https://github.com/IBM-Swift/CloudEnvironment.git", majorVersion: 4),
        .Package(url: "https://github.com/IBM-Swift/Health.git", majorVersion: 0),
    ],
    exclude: ["src"]
)
