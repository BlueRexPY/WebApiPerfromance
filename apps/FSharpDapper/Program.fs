module Program

open System
open System.Collections.Generic
open System.Threading.Tasks
open Microsoft.AspNetCore.Builder
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

    app.Run()
    0
