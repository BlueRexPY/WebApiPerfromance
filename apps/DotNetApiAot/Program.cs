using System.Text.Json.Serialization;
using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Driver;
using Npgsql;

WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

// Configure JSON serialization for AOT
builder.Services.ConfigureHttpJsonOptions(options =>
{
    options.SerializerOptions.TypeInfoResolverChain.Insert(0, AppJsonSerializerContext.Default);
});

string? connectionString =
    builder.Configuration.GetConnectionString("DefaultConnection")
    ?? Environment.GetEnvironmentVariable("DATABASE_URL")
    ?? throw new InvalidOperationException("DATABASE_URL is not set");

NpgsqlDataSourceBuilder dataSourceBuilder = new(connectionString);
dataSourceBuilder.EnableParameterLogging(false);
NpgsqlDataSource dataSource = dataSourceBuilder.Build();

builder.Services.AddSingleton(dataSource);

string mongoUrl = Environment.GetEnvironmentVariable("MONGO_URL") ?? "mongodb://mongodb:27017";
MongoClient mongoClient = new MongoClient(mongoUrl);
IMongoDatabase mongoDatabase = mongoClient.GetDatabase("ordersdb");
builder.Services.AddSingleton(mongoDatabase);

WebApplication app = builder.Build();

app.MapGet("/", () => new HelloResponse { Message = "Hello, World!" });
app.MapGet(
    "/postgresql/orders",
    async (NpgsqlDataSource dataSource) =>
    {
        const string sql =
            @"
        SELECT id, customer_id, total_cents, status, created_at
        FROM orders
        LIMIT $1
        OFFSET $2";

        await using NpgsqlConnection connection = await dataSource.OpenConnectionAsync();
        await using NpgsqlCommand command = new NpgsqlCommand(sql, connection);

        command.Parameters.Add(new NpgsqlParameter { Value = 100 });
        command.Parameters.Add(new NpgsqlParameter { Value = 1000 });

        List<Order> orders = new List<Order>();
        await using NpgsqlDataReader reader = await command.ExecuteReaderAsync();

        while (await reader.ReadAsync())
        {
            orders.Add(
                new Order
                {
                    Id = reader.GetInt32(0),
                    CustomerId = reader.GetInt32(1),
                    TotalCents = reader.GetInt32(2),
                    Status = reader.GetString(3),
                    CreatedAt = reader.GetDateTime(4)
                }
            );
        }

        return orders;
    }
);

app.MapGet(
    "/mongodb/orders",
    async (IMongoDatabase mongoDatabase) =>
    {
        IMongoCollection<Order> collection = mongoDatabase.GetCollection<Order>("orders");
        List<Order> orders = await collection
            .Find(FilterDefinition<Order>.Empty)
            .Skip(1000)
            .Limit(100)
            .Project(Builders<Order>.Projection.Exclude("_id"))
            .As<Order>()
            .ToListAsync();
        return Results.Json(orders, AppJsonSerializerContext.Default.ListOrder);
    }
);

app.Run();

public record HelloResponse
{
    public string Message { get; init; } = "Hello, World!";
}

[BsonIgnoreExtraElements]
public class Order
{
    [BsonElement("id")]
    public int Id { get; set; }

    [BsonElement("customer_id")]
    public int CustomerId { get; set; }

    [BsonElement("total_cents")]
    public int TotalCents { get; set; }

    [BsonElement("status")]
    public string Status { get; set; } = string.Empty;

    [BsonElement("created_at")]
    public DateTime CreatedAt { get; set; }
}

[JsonSerializable(typeof(HelloResponse))]
[JsonSerializable(typeof(List<Order>))]
[JsonSerializable(typeof(Order))]
internal partial class AppJsonSerializerContext : JsonSerializerContext { }
