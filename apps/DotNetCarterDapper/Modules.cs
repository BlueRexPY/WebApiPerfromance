using Carter;
using Dapper;
using Npgsql;

public class HelloModule : ICarterModule
{
    public void AddRoutes(IEndpointRouteBuilder app)
    {
        app.MapGet("/", () => new HelloResponse { Message = "Hello, World!" });
    }
}

public class OrdersModule : ICarterModule
{
    public void AddRoutes(IEndpointRouteBuilder app)
    {
        app.MapGet(
            "/orders",
            async (NpgsqlDataSource ds) =>
            {
                await using var conn = await ds.OpenConnectionAsync();
                return await conn.QueryAsync<Order>(
                    "SELECT id, customer_id AS CustomerId, total_cents AS TotalCents, "
                        + "status, created_at AS CreatedAt FROM orders LIMIT 100 OFFSET 1000"
                );
            }
        );
    }
}

public record HelloResponse
{
    public string Message { get; init; } = "Hello, World!";
}

public class Order
{
    public int Id { get; set; }
    public int CustomerId { get; set; }
    public int TotalCents { get; set; }
    public string Status { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
}
