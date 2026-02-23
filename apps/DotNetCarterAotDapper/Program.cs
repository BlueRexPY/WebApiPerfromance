using System.Text.Json.Serialization;
using Npgsql;

WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

builder.Services.ConfigureHttpJsonOptions(options =>
{
    options.SerializerOptions.TypeInfoResolverChain.Insert(0, AppJsonSerializerContext.Default);
});

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
        const string sql =
            "SELECT id, customer_id, total_cents, status, created_at "
            + "FROM orders LIMIT 100 OFFSET 1000";

        await using var conn = await ds.OpenConnectionAsync();
        await using var cmd = conn.CreateCommand();
        cmd.CommandText = sql;

        var orders = new List<Order>(100);
        await using var reader = await cmd.ExecuteReaderAsync();
        while (await reader.ReadAsync())
        {
            orders.Add(
                new Order
                {
                    Id = reader.GetInt32(0),
                    CustomerId = reader.GetInt32(1),
                    TotalCents = reader.GetInt32(2),
                    Status = reader.GetString(3),
                    CreatedAt = reader.GetDateTime(4),
                }
            );
        }
        return orders;
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

[JsonSerializable(typeof(HelloResponse))]
[JsonSerializable(typeof(List<Order>))]
[JsonSerializable(typeof(Order))]
internal partial class AppJsonSerializerContext : JsonSerializerContext { }
