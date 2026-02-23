using Carter;
using Microsoft.EntityFrameworkCore;

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
            async (OrdersDbContext db) =>
                await db.Orders.AsNoTracking().OrderBy(o => o.Id).Skip(1000).Take(100).ToListAsync()
        );
    }
}

public record HelloResponse
{
    public string Message { get; init; } = "Hello, World!";
}
