
[<CLIMutable>]
type HelloResponse = { Message: string }

[<CLIMutable>]
type Order =
    { Id: int
      CustomerId: int
      TotalCents: int
      Status: string
      CreatedAt: DateTime }

let getOrders (dataSource: NpgsqlDataSource) : Task<List<Order>> =
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

        return orders
    }

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
    let dataSource = dataSourceBuilder.Build()

    builder.Services.AddSingleton(dataSource) |> ignore

    let app = builder.Build()

    app.MapGet("/", Func<HelloResponse>(fun () -> { Message = "Hello, World!" })) |> ignore
    app.MapGet("/orders", Func<NpgsqlDataSource, Task<List<Order>>>(fun ds -> getOrders ds)) |> ignore

    app.Run()
    0
