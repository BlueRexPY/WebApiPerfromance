using System.Text.Json.Serialization;
using CompiledModels;
using Microsoft.EntityFrameworkCore;
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

builder.Services.AddDbContextPool<OrdersDbContext>(
    options =>
    {
        options.UseNpgsql(connectionString, npgsql => npgsql.MaxBatchSize(120));
        options.UseModel(OrdersDbContextModel.Instance);
    },
    poolSize: 128
);

WebApplication app = builder.Build();

app.MapGet("/", () => new HelloResponse { Message = "Hello, World!" });

app.MapGet(
    "/orders",
    async (OrdersDbContext db) =>
    {
        const string sql =
            "SELECT id, customer_id, total_cents, status, created_at "
            + "FROM orders LIMIT 100 OFFSET 1000";

        await db.Database.OpenConnectionAsync();
        var conn = (NpgsqlConnection)db.Database.GetDbConnection();
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

[JsonSerializable(typeof(HelloResponse))]
[JsonSerializable(typeof(List<Order>))]
[JsonSerializable(typeof(Order))]
internal partial class AppJsonSerializerContext : JsonSerializerContext { }
