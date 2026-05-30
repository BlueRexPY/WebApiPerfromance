module Program

open System
open System.Net.WebSockets
open System.Text
open System.Text.Json
open System.Threading
open System.Threading.Tasks
open Microsoft.AspNetCore.Builder
open Microsoft.AspNetCore.Http
open Microsoft.Extensions.Configuration
open Microsoft.Extensions.DependencyInjection
open Npgsql

[<Struct>]
type Order =
    { Id: int
      CustomerId: int
      TotalCents: int
      Status: string
      CreatedAt: DateTime }

let writeOrdersJson (orders: Order list) : byte[] =
    let buffer = System.Buffers.ArrayBufferWriter<byte>()
    use writer = new Utf8JsonWriter(buffer)
    writer.WriteStartArray()

    for order in orders do
        writer.WriteStartObject()
        writer.WriteNumber("id", order.Id)
        writer.WriteNumber("customerId", order.CustomerId)
        writer.WriteNumber("totalCents", order.TotalCents)
        writer.WriteString("status", order.Status)
        writer.WriteString("createdAt", order.CreatedAt.ToString("o"))
        writer.WriteEndObject()

    writer.WriteEndArray()
    writer.Flush()
    buffer.WrittenMemory.ToArray()

let getOrdersJson (dataSource: NpgsqlDataSource) : Task<byte[]> =
    task {
        let sql =
            "SELECT id, customer_id, total_cents, status, created_at "
            + "FROM orders LIMIT 100 OFFSET 1000"

        let! conn = dataSource.OpenConnectionAsync()
        use conn = conn
        use cmd = conn.CreateCommand()
        cmd.CommandText <- sql

        let! reader = cmd.ExecuteReaderAsync()
        use reader = reader

        let orders = System.Collections.Generic.List<Order>()
        let mutable cont = true

        while cont do
            let! more = reader.ReadAsync()

            if more then
                orders.Add(
                    { Id = reader.GetInt32(0)
                      CustomerId = reader.GetInt32(1)
                      TotalCents = reader.GetInt32(2)
                      Status = reader.GetString(3)
                      CreatedAt = reader.GetDateTime(4) }
                )
            else
                cont <- false

        return writeOrdersJson (orders |> Seq.toList)
    }

let helloBytes = Encoding.UTF8.GetBytes("""{"message":"Hello, World!"}""")

let handleHello (ctx: HttpContext) : Task =
    ctx.Response.ContentType <- "application/json; charset=utf-8"
    ctx.Response.Body.WriteAsync(ReadOnlyMemory<byte>(helloBytes)).AsTask()

let handleOrders (ctx: HttpContext) : Task =
    task {
        let ds = ctx.RequestServices.GetRequiredService<NpgsqlDataSource>()
        let! result = getOrdersJson ds
        ctx.Response.ContentType <- "application/json; charset=utf-8"
        do! ctx.Response.Body.WriteAsync(ReadOnlyMemory<byte>(result)).AsTask()
    } :> Task

let handleWsEcho (ctx: HttpContext) : Task =
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
    } :> Task

let handleWsOrders (ctx: HttpContext) : Task =
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
                    let! payload = getOrdersJson ds
                    do! ws.SendAsync(ReadOnlyMemory<byte>(payload), WebSocketMessageType.Text, true, CancellationToken.None)
    } :> Task

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

    app.MapGet("/", RequestDelegate(handleHello)) |> ignore
    app.MapGet("/orders", RequestDelegate(handleOrders)) |> ignore
    app.UseWebSockets() |> ignore
    app.Map("/ws/echo", RequestDelegate(handleWsEcho)) |> ignore
    app.Map("/ws/orders", RequestDelegate(handleWsOrders)) |> ignore

    app.Run()
    0
