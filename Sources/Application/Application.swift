import Foundation
import Kitura
import LoggerAPI
import Configuration
import CloudEnvironment
import Health

public let router = Router()
public let cloudEnv = CloudEnv()
public let projectPath = ConfigurationManager.BasePath.project.path
public var port: Int = 8080
public let health = Health()

public func initialize() throws {
    // Configuration
    port = cloudEnv.port

    // Capabilities

    // Services

    // Middleware
    router.all(middleware: BodyParser())
    router.all(middleware: StaticFileServer())

    // Endpoints
    initializeHealthRoutes()
}

public func run() throws {
    Kitura.addHTTPServer(onPort: port, with: router)
    Kitura.run()
}
