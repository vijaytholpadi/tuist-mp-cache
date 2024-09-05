import ProjectDescription

let project = Project(
    name: "tuist-mp-cache",
    targets: [
        .target(
            name: "tuist-mp-cache",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.tuist-mp-cache",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["tuist-mp-cache/Sources/**"],
            resources: ["tuist-mp-cache/Resources/**"],
            dependencies: [
                .external(
                    name: "Nimble",
                    condition: .when([.ios])
                )
            ]
        ),
        .target(
            name: "tuist-mp-cacheTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.tuist-mp-cacheTests",
            infoPlist: .default,
            sources: ["tuist-mp-cache/Tests/**"],
            resources: [],
            dependencies: [.target(name: "tuist-mp-cache")]
        ),
    ]
)
