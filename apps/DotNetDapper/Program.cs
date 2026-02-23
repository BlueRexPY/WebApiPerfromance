using Dapper;
using Npgsql;

WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

string connectionString =
    Environment.GetEnvironmentVariable("DATABASE_URL")
    ?? builder.Configuration.GetConnectionString("DefaultConnection")
    ?? throw new InvalidOperationException("DATABASE_URL is not set");

NpgsqlDataSourceBuilder dataSourceBuilder = new(connectionString);
dataSourceBuilder.EnableParameterLogging(false);
dataSourceBuilder.ConnectionStringBuilder.MaxPoolSize = 120;
NpgsqlDataSource dataSource = dataSourceBuilder.Build();

builder.Services.AddSingleton(dataSource);

WebApplication app = builder.Build();

app.MapGet("/", () => new HelloResponse { Message = "Hello, World!" });

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

app.Run();

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
