module Program

open System
open System.Collections.Generic
open System.Linq
open System.Threading.Tasks
open Microsoft.AspNetCore.Builder
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

    app.Run()
    0
