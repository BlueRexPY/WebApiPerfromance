import Vapor
import PostgresNIO
import NIOCore
import NIOPosix

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
        
        // Configure PostgreSQL connection
        let config = PostgresConnection.Configuration(
            host: Environment.get("DB_HOST") ?? "postgres",
            port: Int(Environment.get("DB_PORT") ?? "5432") ?? 5432,
            username: Environment.get("DB_USER") ?? "apiuser",
            password: Environment.get("DB_PASSWORD") ?? "apipassword",
            database: Environment.get("DB_NAME") ?? "ordersdb",
            tls: .disable
        )
        
        app.http.server.configuration.hostname = "0.0.0.0"
        app.http.server.configuration.port = 8000
        
        // Routes
        app.get("/") { req async -> HelloResponse in
            return HelloResponse(message: "Hello, World!")
        }
        
        app.get("orders") { req async throws -> [Order] in
            let connection = try await PostgresConnection.connect(
                configuration: config,
                id: 1,
                logger: req.logger
            )
            
            defer {
                Task {
                    try? await connection.close()
                }
            }
            
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
        
        try await app.execute()
    }
}
