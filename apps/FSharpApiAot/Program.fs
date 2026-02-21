module Program

open System
open System.Collections.Generic
open System.Text
open System.Text.Json
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

let writeOrdersJson (orders: List<Order>) : byte[] =
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

let getOrders (dataSource: NpgsqlDataSource) : Task<byte[]> =
    task {
        let sql =
            """
        SELECT id, customer_id, total_cents, status, created_at
        FROM orders
        LIMIT $1
        OFFSET $2"""

        let! connection = dataSource.OpenConnectionAsync()
        use connection = connection
        use command = new NpgsqlCommand(sql, connection)
        command.Parameters.Add(NpgsqlParameter(Value = 100)) |> ignore
        command.Parameters.Add(NpgsqlParameter(Value = 1000)) |> ignore

        let! reader = command.ExecuteReaderAsync()
        use reader = reader

        let orders = List<Order>()
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

        let json = writeOrdersJson orders
        return json
    }

let helloBytes = Encoding.UTF8.GetBytes("""{"message":"Hello, World!"}""")

let handleHello (ctx: HttpContext) : Task =
    ctx.Response.ContentType <- "application/json; charset=utf-8"
    ctx.Response.Body.WriteAsync(ReadOnlyMemory<byte>(helloBytes)).AsTask()

let handleOrders (ctx: HttpContext) : Task =
    task {
        let ds = ctx.RequestServices.GetRequiredService<NpgsqlDataSource>()
        let! result = getOrders ds
        ctx.Response.ContentType <- "application/json; charset=utf-8"
        do! ctx.Response.Body.WriteAsync(ReadOnlyMemory<byte>(result)).AsTask()
    } :> Task

[<EntryPoint>]
let main args =
    let builder = WebApplication.CreateBuilder(args)

    let connectionString =
        match Environment.GetEnvironmentVariable("DATABASE_URL") with
        | null
        | "" ->
            match builder.Configuration.GetConnectionString("DefaultConnection") with
            | null -> failwith "DATABASE_URL is not set"
            | cs -> cs
        | url -> url

    let dataSourceBuilder = NpgsqlDataSourceBuilder(connectionString)
    dataSourceBuilder.EnableParameterLogging(false) |> ignore
    let connStringBuilder: Npgsql.NpgsqlConnectionStringBuilder = dataSourceBuilder.ConnectionStringBuilder
    connStringBuilder.MaxPoolSize <- 120
    let dataSource = dataSourceBuilder.Build()

    builder.Services.AddSingleton(dataSource) |> ignore

    let app = builder.Build()

    app.MapGet("/", RequestDelegate(handleHello)) |> ignore
    app.MapGet("/orders", RequestDelegate(handleOrders)) |> ignore

    app.Run()
    0
