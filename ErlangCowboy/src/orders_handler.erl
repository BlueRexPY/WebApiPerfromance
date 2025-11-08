-module(orders_handler).
-export([init/2]).

init(Req0, State) ->
    Sql = "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
    Params = [100, 1000],
    
    case db_pool:query(Sql, Params) of
        {ok, _Columns, Rows} ->
            Orders = lists:map(fun row_to_order/1, Rows),
            Response = jsx:encode(Orders),
            Req = cowboy_req:reply(200,
                #{<<"content-type">> => <<"application/json">>},
                Response,
                Req0),
            {ok, Req, State};
        {error, Reason} ->
            ErrorResponse = jsx:encode(#{<<"error">> => atom_to_binary(Reason, utf8)}),
            Req = cowboy_req:reply(500,
                #{<<"content-type">> => <<"application/json">>},
                ErrorResponse,
                Req0),
            {ok, Req, State}
    end.

row_to_order({Id, CustomerId, TotalCents, Status, CreatedAt}) ->
    #{
        <<"id">> => Id,
        <<"customer_id">> => CustomerId,
        <<"total_cents">> => TotalCents,
        <<"status">> => Status,
        <<"created_at">> => format_timestamp(CreatedAt)
    }.

format_timestamp({{Year, Month, Day}, {Hour, Min, Sec}}) ->
    iolist_to_binary(
        io_lib:format("~4..0B-~2..0B-~2..0BT~2..0B:~2..0B:~2..0B",
                     [Year, Month, Day, Hour, Min, trunc(Sec)])
    ).
