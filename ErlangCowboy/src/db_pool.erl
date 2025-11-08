-module(db_pool).
-export([start/0, query/2, query/3]).

-define(POOL_SIZE, 90).

start() ->
    DatabaseUrl = os:getenv("DATABASE_URL", "postgresql://apiuser:apipassword@db:5432/ordersdb"),
    {ok, Config} = parse_database_url(DatabaseUrl),
    
    PoolArgs = [
        {name, {local, db_pool}},
        {worker_module, db_worker},
        {size, ?POOL_SIZE},
        {max_overflow, 0}
    ],
    
    WorkerArgs = Config,
    poolboy:start_link(PoolArgs, WorkerArgs).

query(Sql, Params) ->
    query(Sql, Params, []).

query(Sql, Params, Opts) ->
    poolboy:transaction(db_pool, fun(Worker) ->
        gen_server:call(Worker, {query, Sql, Params, Opts})
    end).

parse_database_url(Url) ->
    % Parse postgresql://user:password@host:port/database
    case string:split(Url, "://", trailing) of
        [_Protocol, Rest] ->
            [UserPass, HostPortDb] = string:split(Rest, "@", trailing),
            [User, Password] = string:split(UserPass, ":", trailing),
            [HostPort, Database] = string:split(HostPortDb, "/", trailing),
            [Host, PortStr] = string:split(HostPort, ":", trailing),
            Port = list_to_integer(PortStr),
            {ok, [
                {host, Host},
                {port, Port},
                {database, Database},
                {username, User},
                {password, Password}
            ]};
        _ ->
            {error, invalid_url}
    end.
