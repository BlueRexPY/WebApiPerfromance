using System.Net.WebSockets;
using System.Text.Json;
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

app.UseWebSockets();

app.Map(
    "/ws/echo",
    async (HttpContext context) =>
    {
        if (!context.WebSockets.IsWebSocketRequest)
        {
            context.Response.StatusCode = StatusCodes.Status400BadRequest;
            return;
        }
        using WebSocket ws = await context.WebSockets.AcceptWebSocketAsync();
        byte[] buffer = new byte[1024];
        while (ws.State == WebSocketState.Open)
        {
            WebSocketReceiveResult result = await ws.ReceiveAsync(buffer, CancellationToken.None);
            if (result.MessageType == WebSocketMessageType.Close)
            {
                await ws.CloseAsync(
                    WebSocketCloseStatus.NormalClosure,
                    null,
                    CancellationToken.None
                );
                break;
            }
            await ws.SendAsync(
                new ArraySegment<byte>(buffer, 0, result.Count),
                result.MessageType,
                result.EndOfMessage,
                CancellationToken.None
            );
        }
    }
);

app.Map(
    "/ws/orders",
    async (HttpContext context, NpgsqlDataSource ds) =>
    {
        if (!context.WebSockets.IsWebSocketRequest)
        {
            context.Response.StatusCode = StatusCodes.Status400BadRequest;
            return;
        }
        using WebSocket ws = await context.WebSockets.AcceptWebSocketAsync();
        byte[] buffer = new byte[256];
        while (ws.State == WebSocketState.Open)
        {
            WebSocketReceiveResult result = await ws.ReceiveAsync(buffer, CancellationToken.None);
            if (result.MessageType == WebSocketMessageType.Close)
            {
                await ws.CloseAsync(
                    WebSocketCloseStatus.NormalClosure,
                    null,
                    CancellationToken.None
                );
                break;
            }
            await using var conn = await ds.OpenConnectionAsync();
            var orders = await conn.QueryAsync<Order>(
                "SELECT id, customer_id AS CustomerId, total_cents AS TotalCents, "
                    + "status, created_at AS CreatedAt FROM orders LIMIT 100 OFFSET 1000"
            );
            byte[] payload = JsonSerializer.SerializeToUtf8Bytes(orders);
            await ws.SendAsync(payload, WebSocketMessageType.Text, true, CancellationToken.None);
        }
    }
);

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
