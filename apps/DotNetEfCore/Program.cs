using Microsoft.EntityFrameworkCore;

WebApplicationBuilder builder = WebApplication.CreateBuilder(args);

string connectionString =
    Environment.GetEnvironmentVariable("DATABASE_URL")
    ?? builder.Configuration.GetConnectionString("DefaultConnection")
    ?? throw new InvalidOperationException("DATABASE_URL is not set");

builder.Services.AddDbContextPool<OrdersDbContext>(
    options => options.UseNpgsql(connectionString, npgsql => npgsql.MaxBatchSize(120)),
    poolSize: 128
);

WebApplication app = builder.Build();

app.MapGet("/", () => new HelloResponse { Message = "Hello, World!" });

app.MapGet(
    "/orders",
    async (OrdersDbContext db) =>
        await db.Orders.AsNoTracking().OrderBy(o => o.Id).Skip(1000).Take(100).ToListAsync()
);

app.Run();

public record HelloResponse
{
    public string Message { get; init; } = "Hello, World!";
}
