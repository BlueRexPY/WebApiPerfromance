module Program

open System
open System.Collections.Generic
open System.Linq
open System.Net.WebSockets
open System.Text.Json
open System.Threading
open System.Threading.Tasks
open Microsoft.AspNetCore.Builder
open Microsoft.AspNetCore.Http
open Microsoft.EntityFrameworkCore
open Microsoft.Extensions.Configuration
open Microsoft.Extensions.DependencyInjection

[<CLIMutable>]
type HelloResponse = { Message: string }

[<CLIMutable>]
type Order =
    { Id: int
      CustomerId: int
      TotalCents: int
      Status: string
      CreatedAt: DateTime }

type OrdersDbContext(options: DbContextOptions<OrdersDbContext>) =
    inherit DbContext(options)

    override _.OnModelCreating(modelBuilder: ModelBuilder) =
        modelBuilder.Entity<Order>(fun entity ->
            entity.ToTable("orders") |> ignore
            entity.HasKey(fun e -> e.Id :> obj) |> ignore
            entity.Property(fun e -> e.Id).HasColumnName("id") |> ignore
            entity.Property(fun e -> e.CustomerId).HasColumnName("customer_id") |> ignore
            entity.Property(fun e -> e.TotalCents).HasColumnName("total_cents") |> ignore
            entity.Property(fun e -> e.Status).HasColumnName("status") |> ignore
            entity.Property(fun e -> e.CreatedAt).HasColumnName("created_at") |> ignore)
        |> ignore

    member this.Orders = this.Set<Order>()

[<EntryPoint>]
let main args =
    let builder = WebApplication.CreateBuilder(args)

    let connectionString =
        match Environment.GetEnvironmentVariable("DATABASE_URL") with
        | null | "" ->
            match builder.Configuration.GetConnectionString("DefaultConnection") with
            | null -> failwith "DATABASE_URL is not set"
            | cs -> cs
        | url -> url

    builder.Services.AddDbContextPool<OrdersDbContext>(
        (fun options ->
            options.UseNpgsql(connectionString, fun npgsql -> npgsql.MaxBatchSize(120) |> ignore)
            |> ignore),
        poolSize = 128)
    |> ignore

    let app = builder.Build()

    app.MapGet("/", Func<HelloResponse>(fun () -> { Message = "Hello, World!" })) |> ignore

    app.MapGet(
        "/orders",
        Func<OrdersDbContext, Task<List<Order>>>(fun db ->
            db.Orders
                .AsNoTracking()
                .OrderBy(fun o -> o.Id)
                .Skip(1000)
                .Take(100)
                .ToListAsync()))
    |> ignore

    app.UseWebSockets() |> ignore

    app.Map("/ws/echo", RequestDelegate(fun (ctx: HttpContext) ->
        task {
            if not ctx.WebSockets.IsWebSocketRequest then
                ctx.Response.StatusCode <- 400
            else
                use! ws = ctx.WebSockets.AcceptWebSocketAsync()
                let buffer = Array.zeroCreate<byte> 1024
                let mutable running = true
                while running do
                    let! result = ws.ReceiveAsync(Memory<byte>(buffer), CancellationToken.None)
                    if result.MessageType = WebSocketMessageType.Close then
                        do! ws.CloseAsync(WebSocketCloseStatus.NormalClosure, null, CancellationToken.None)
                        running <- false
                    else
                        do! ws.SendAsync(ReadOnlyMemory<byte>(buffer, 0, result.Count), result.MessageType, result.EndOfMessage, CancellationToken.None)
        } :> Task)) |> ignore

    app.Map("/ws/orders", RequestDelegate(fun (ctx: HttpContext) ->
        task {
            if not ctx.WebSockets.IsWebSocketRequest then
                ctx.Response.StatusCode <- 400
            else
                let db = ctx.RequestServices.GetRequiredService<OrdersDbContext>()
                use! ws = ctx.WebSockets.AcceptWebSocketAsync()
                let buffer = Array.zeroCreate<byte> 256
                let mutable running = true
                while running do
                    let! result = ws.ReceiveAsync(Memory<byte>(buffer), CancellationToken.None)
                    if result.MessageType = WebSocketMessageType.Close then
                        do! ws.CloseAsync(WebSocketCloseStatus.NormalClosure, null, CancellationToken.None)
                        running <- false
                    else
                        let! orders =
                            db.Orders
                                .AsNoTracking()
                                .OrderBy(fun o -> o.Id)
                                .Skip(1000)
                                .Take(100)
                                .ToListAsync()
                        let payload = JsonSerializer.SerializeToUtf8Bytes(orders)
                        do! ws.SendAsync(ReadOnlyMemory<byte>(payload), WebSocketMessageType.Text, true, CancellationToken.None)
        } :> Task)) |> ignore

    app.Run()
    0
