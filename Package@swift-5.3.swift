// swift-tools-version:5.3

import PackageDescription

let pkg = Package(name: "PromiseKit")
pkg.products = [
    .library(name: "PromiseKit", targets: ["PromiseKit"]),
]

let pmk: Target = .target(name: "PromiseKit")
pmk.path = "Sources"
pmk.exclude = [
    "AnyPromise.swift",
    "AnyPromise.m",
    "PMKCallVariadicBlock.m",
    "dispatch_promise.m",
    "join.m",
    "when.m",
    "NSMethodSignatureForBlock.m",
    "after.m",
    "hang.m",
    "race.m",
    "Deprecations.swift",
    "Info.plist"
]
pkg.swiftLanguageVersions = [.v5]
pkg.targets = [
    pmk,
    .testTarget(name: "A+", dependencies: ["PromiseKit"]),
    .testTarget(name: "CorePromise", dependencies: ["PromiseKit"], path: "Tests/CorePromise"),
]
