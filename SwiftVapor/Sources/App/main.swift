import Vapor
import PostgresNIO

struct HelloResponse: Content {
    let message: String
}

struct Order: Content {
    let id: Int
    let customer_id: Int
    let total_cents: Int
    let status: String
    let created_at: Date
}

@main
struct Main {
    static func main() async throws {
        var env = try Environment.detect()
        try LoggingSystem.bootstrap(from: &env)
        
        let app = try await Application.make(env)
        defer { app.shutdown() }
        
        // Configure PostgreSQL connection pool
        let databaseURL = Environment.get("DATABASE_URL") ?? "postgresql://apiuser:apipassword@localhost:5432/ordersdb"
        
        // Parse connection string
        let host = "localhost"
        let port = 5432
        let username = "apiuser"
        let password = "apipassword"
        let database = "ordersdb"
        
        let config = PostgresConnection.Configuration(
            connection: .init(host: host, port: port),
            authentication: .init(username: username, database: database, password: password),
            tls: .disable
        )
        
        let eventLoopGroup = app.eventLoopGroup
        let pool = EventLoopGroupConnectionPool(
            source: PostgresConnection.Configuration.makeConnectionSource(configuration: config, eventLoop: eventLoopGroup.any()),
            maxConnectionsPerEventLoop: 90,
            on: eventLoopGroup
        )
        
        app.http.server.configuration.hostname = "0.0.0.0"
        app.http.server.configuration.port = 8000
        
        // Routes
        app.get("/") { req async -> HelloResponse in
            return HelloResponse(message: "Hello, World!")
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
        
        try await app.execute()
    }
}
