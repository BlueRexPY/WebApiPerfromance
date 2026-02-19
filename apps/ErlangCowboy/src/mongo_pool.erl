-module(mongo_pool).
-export([start/0, command/1]).

-define(POOL_SIZE, 90).

start() ->
    MongoUrl = os:getenv("MONGO_URL", "mongodb://mongodb:27017"),
    {Host, Port} = parse_mongo_url(MongoUrl),

    PoolArgs = [
        {name, {local, mongo_pool}},
        {worker_module, mongo_worker},
        {size, ?POOL_SIZE},
        {max_overflow, 0}
    ],

    WorkerArgs = [{host, Host}, {port, Port}, {database, <<"ordersdb">>}],
    poolboy:start_link(PoolArgs, WorkerArgs).

command(Command) ->
    poolboy:transaction(mongo_pool, fun(Worker) ->
        gen_server:call(Worker, {command, Command}, 10000)
    end).

parse_mongo_url(Url) ->
    case string:split(Url, "://", trailing) of
        [_Proto, HostPort] ->
            case string:split(HostPort, ":", trailing) of
                [Host, PortStr] ->
                    Port = list_to_integer(string:trim(PortStr)),
                    {Host, Port};
                _ ->
                    {"mongodb", 27017}
            end;
        _ ->
            {"mongodb", 27017}
    end.
