using Carter;
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
builder.Services.AddCarter();

WebApplication app = builder.Build();
app.MapCarter();
app.Run();
