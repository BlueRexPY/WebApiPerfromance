-module(ws_orders_handler).
-behaviour(cowboy_websocket).

-export([init/2, websocket_handle/2, websocket_info/2]).

init(Req, State) ->
    {cowboy_websocket, Req, State}.

websocket_handle({text, _}, State) ->
    Sql = "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
    case db_pool:query(Sql, [100, 1000]) of
        {ok, _Columns, Rows} ->
            Orders = lists:map(fun orders_handler:row_to_order/1, Rows),
            Json = jsx:encode(Orders),
            {reply, {text, Json}, State};
        {error, _} ->
            {ok, State}
    end;
websocket_handle(_, State) ->
    {ok, State}.

websocket_info(_, State) ->
    {ok, State}.
