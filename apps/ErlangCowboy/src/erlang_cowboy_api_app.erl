-module(erlang_cowboy_api_app).
-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    % Start database pools
    db_pool:start(),
    mongo_pool:start(),

    % Define routes
    Dispatch = cowboy_router:compile([
        {'_', [
            {"/", hello_handler, []},
            {"/postgresql/orders", orders_handler, []},
            {"/mongodb/orders", mongo_orders_handler, []}
        ]}
    ]),

    % Start Cowboy HTTP server
    {ok, _} = cowboy:start_clear(http_listener,
        [{port, 8000}, {num_acceptors, 100}],
        #{env => #{dispatch => Dispatch}}
    ),

    erlang_cowboy_api_sup:start_link().

stop(_State) ->
    ok = cowboy:stop_listener(http_listener),
    ok.
