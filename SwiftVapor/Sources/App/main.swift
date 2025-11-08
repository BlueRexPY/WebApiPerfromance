import Vapor
import PostgresNIO
import NIOCore
import NIOPosix
import NIOConcurrencyHelpers

struct Order: Content {
    let id: Int
    let customer_id: Int
    let total_cents: Int
    let status: String
    let created_at: Date
}

final class PostgresPool {
    private let config: PostgresConnection.Configuration
    private let eventLoopGroup: EventLoopGroup
    private let logger: Logger
    private var connections: [PostgresConnection] = []
    private let lock = NIOLock()
    private let maxConnections = 50
    
    init(config: PostgresConnection.Configuration, eventLoopGroup: EventLoopGroup, logger: Logger) {
        self.config = config
        self.eventLoopGroup = eventLoopGroup
        self.logger = logger
    }
    
    func withConnection<T>(_ closure: @escaping (PostgresConnection) async throws -> T) async throws -> T {
        let connection: PostgresConnection
        
        let existingConnection: PostgresConnection? = lock.withLock {
            if !connections.isEmpty {
                return connections.removeLast()
            }
            return nil
        }
        
        if let existing = existingConnection {
            connection = existing
        } else {
            connection = try await PostgresConnection.connect(
                on: eventLoopGroup.next(),
                configuration: config,
                id: 1,
                logger: logger
            )
        }
        
        do {
            let result = try await closure(connection)
            lock.withLock {
                if connections.count < maxConnections {
                    connections.append(connection)
                } else {
                    Task {
                        try? await connection.close()
                    }
                }
            }
            return result
        } catch {
            try? await connection.close()
            throw error
        }
    }
    
    func shutdown() async {
        let conns = lock.withLock {
            let result = connections
            connections.removeAll()
            return result
        }
        
        for conn in conns {
            try? await conn.close()
        }
    }
}

@main
struct Main {
    static func main() async throws {
        var env = try Environment.detect()
        try LoggingSystem.bootstrap(from: &env)
        
        let app = try await Application.make(env)
        
        let config = PostgresConnection.Configuration(
            host: Environment.get("DB_HOST") ?? "db",
            port: Int(Environment.get("DB_PORT") ?? "5432") ?? 5432,
            username: Environment.get("DB_USER") ?? "apiuser",
            password: Environment.get("DB_PASSWORD") ?? "apipassword",
            database: Environment.get("DB_NAME") ?? "ordersdb",
            tls: .disable
        )
        
        let pool = PostgresPool(
            config: config,
            eventLoopGroup: app.eventLoopGroup,
            logger: app.logger
        )
        
        app.http.server.configuration.hostname = "0.0.0.0"
        app.http.server.configuration.port = 8000
        
        // Routes
        app.get("/") { req -> String in
            "Hello, World!"
        }
        
        app.get("orders") { req async throws -> [Order] in
            try await pool.withConnection { connection in
                let rows = try await connection.query(
                    """
                    SELECT id, customer_id, total_cents, status, created_at
                    FROM orders
                    LIMIT 100
                    OFFSET 1000
                    """,
                    logger: req.logger
                )
                
                var orders: [Order] = []
                for try await (id, customerId, totalCents, status, createdAt) in rows.decode((Int, Int, Int, String, Date).self) {
                    orders.append(Order(
                        id: id,
                        customer_id: customerId,
                        total_cents: totalCents,
                        status: status,
                        created_at: createdAt
                    ))
                }
                
                return orders
            }
        }
        
        defer {
            Task {
                await pool.shutdown()
            }
            app.shutdown()
        }
        
        try await app.execute()
    }
}
