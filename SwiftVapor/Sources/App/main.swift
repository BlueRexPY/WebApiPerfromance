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
        let app = Application(.detect())
        defer { app.shutdown() }
        
        // Configure PostgreSQL connection pool
        let databaseURL = Environment.get("DATABASE_URL") ?? "postgresql://apiuser:apipassword@localhost:5432/ordersdb"
        
        guard let config = try? PostgresConnection.Configuration(url: databaseURL) else {
            fatalError("Invalid DATABASE_URL")
        }
        
        let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: System.coreCount)
        let pool = EventLoopGroupConnectionPool(
            source: PostgresConnectionSource(configuration: config),
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
                let query = """
                SELECT id, customer_id, total_cents, status, created_at
                FROM orders
                LIMIT $1
                OFFSET $2
                """
                
                let rows = try await connection.query(
                    PostgresQuery(stringLiteral: query),
                    [100, 1000]
                )
                
                var orders: [Order] = []
                for try await row in rows {
                    let id = try row.decode(Int.self, context: .default)
                    let customerId = try row.decode(Int.self, context: .default)
                    let totalCents = try row.decode(Int.self, context: .default)
                    let status = try row.decode(String.self, context: .default)
                    let createdAt = try row.decode(Date.self, context: .default)
                    
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
        
        try app.run()
    }
}
