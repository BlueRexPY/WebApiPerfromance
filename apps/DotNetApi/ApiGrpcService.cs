using Api;
using Grpc.Core;
using Npgsql;

public class ApiGrpcService : ApiService.ApiServiceBase
{
    private readonly NpgsqlDataSource _dataSource;

    public ApiGrpcService(NpgsqlDataSource dataSource)
    {
        _dataSource = dataSource;
    }

    public override Task<HelloReply> SayHello(HelloRequest request, ServerCallContext context)
    {
        return Task.FromResult(new HelloReply { Message = "Hello, World!" });
    }

    public override async Task<GetOrdersReply> GetOrders(
        GetOrdersRequest request,
        ServerCallContext context
    )
    {
        const string sql =
            @"SELECT id, customer_id, total_cents, status, created_at
              FROM orders LIMIT $1 OFFSET $2";

        await using NpgsqlConnection connection = await _dataSource.OpenConnectionAsync();
        await using NpgsqlCommand command = new(sql, connection);
        command.Parameters.Add(new NpgsqlParameter { Value = 100 });
        command.Parameters.Add(new NpgsqlParameter { Value = 1000 });

        var reply = new GetOrdersReply();
        await using NpgsqlDataReader reader = await command.ExecuteReaderAsync();

        while (await reader.ReadAsync())
        {
            reply.Orders.Add(
                new Api.Order
                {
                    Id = reader.GetInt32(0),
                    CustomerId = reader.GetInt32(1),
                    TotalCents = reader.GetInt32(2),
                    Status = reader.GetString(3),
                    CreatedAt = reader.GetDateTime(4).ToString("O"),
                }
            );
        }

        return reply;
    }
}
