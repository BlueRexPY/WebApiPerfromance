module Program

open System
open System.Collections.Generic
open System.Net.WebSockets
open System.Text.Json
open System.Threading
open System.Threading.Tasks
open Microsoft.AspNetCore.Builder
open Microsoft.AspNetCore.Http
open Microsoft.Extensions.Configuration
open Microsoft.Extensions.DependencyInjection
open Npgsql
open Dapper

[<CLIMutable>]
type HelloResponse = { Message: string }

[<CLIMutable>]
type Order =
    { Id: int
      CustomerId: int
      TotalCents: int
      Status: string
      CreatedAt: DateTime }

let getOrders (dataSource: NpgsqlDataSource) : Task<IEnumerable<Order>> =
    task {
        let! conn = dataSource.OpenConnectionAsync()
        use conn = conn
        return!
            conn.QueryAsync<Order>(
                "SELECT id, customer_id AS CustomerId, total_cents AS TotalCents, " +
                "status, created_at AS CreatedAt FROM orders LIMIT 100 OFFSET 1000"
            )
    }

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

    let dataSourceBuilder = NpgsqlDataSourceBuilder(connectionString)
    dataSourceBuilder.EnableParameterLogging(false) |> ignore
    dataSourceBuilder.ConnectionStringBuilder.MaxPoolSize <- 120
    let dataSource = dataSourceBuilder.Build()

    builder.Services.AddSingleton(dataSource) |> ignore

    let app = builder.Build()

    app.MapGet("/", Func<HelloResponse>(fun () -> { Message = "Hello, World!" })) |> ignore
    app.MapGet("/orders", Func<NpgsqlDataSource, Task<IEnumerable<Order>>>(fun ds -> getOrders ds)) |> ignore

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
                let ds = ctx.RequestServices.GetRequiredService<NpgsqlDataSource>()
                use! ws = ctx.WebSockets.AcceptWebSocketAsync()
                let buffer = Array.zeroCreate<byte> 256
                let mutable running = true
                while running do
                    let! result = ws.ReceiveAsync(Memory<byte>(buffer), CancellationToken.None)
                    if result.MessageType = WebSocketMessageType.Close then
                        do! ws.CloseAsync(WebSocketCloseStatus.NormalClosure, null, CancellationToken.None)
                        running <- false
                    else
                        let! orders = getOrders ds
                        let payload = JsonSerializer.SerializeToUtf8Bytes(orders)
                        do! ws.SendAsync(ReadOnlyMemory<byte>(payload), WebSocketMessageType.Text, true, CancellationToken.None)
        } :> Task)) |> ignore

    app.Run()
    0
