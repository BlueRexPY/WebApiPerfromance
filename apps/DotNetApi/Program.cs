using Npgsql;

WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

string connectionString =
    Environment.GetEnvironmentVariable("DATABASE_URL")
    ?? builder.Configuration.GetConnectionString("DefaultConnection")
    ?? throw new InvalidOperationException("DATABASE_URL is not set");

NpgsqlDataSourceBuilder dataSourceBuilder = new(connectionString);
dataSourceBuilder.EnableParameterLogging(false);
NpgsqlDataSource dataSource = dataSourceBuilder.Build();

builder.Services.AddSingleton(dataSource);

WebApplication app = builder.Build();

app.MapGet("/", () => new HelloResponse { Message = "Hello, World!" });
app.MapGet(
    "/orders",
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
