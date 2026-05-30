using System.Net.WebSockets;
using System.Text.Json;
using Carter;
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
builder.Services.AddCarter();

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
    async (HttpContext context, NpgsqlDataSource dataSource) =>
    {
        if (!context.WebSockets.IsWebSocketRequest)
        {
            context.Response.StatusCode = StatusCodes.Status400BadRequest;
            return;
        }
        using WebSocket ws = await context.WebSockets.AcceptWebSocketAsync();
        byte[] buffer = new byte[256];
        const string sql =
            @"SELECT id, customer_id, total_cents, status, created_at
              FROM orders LIMIT $1 OFFSET $2";
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
            List<Order> orders = new();
            await using NpgsqlConnection connection = await dataSource.OpenConnectionAsync();
            await using NpgsqlCommand command = new(sql, connection);
            command.Parameters.Add(new NpgsqlParameter { Value = 100 });
            command.Parameters.Add(new NpgsqlParameter { Value = 1000 });
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
                        CreatedAt = reader.GetDateTime(4),
                    }
                );
            }
            byte[] payload = JsonSerializer.SerializeToUtf8Bytes(orders);
            await ws.SendAsync(payload, WebSocketMessageType.Text, true, CancellationToken.None);
        }
    }
);
app.MapCarter();
app.Run();
