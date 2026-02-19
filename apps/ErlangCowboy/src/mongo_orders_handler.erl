-module(mongo_orders_handler).
-export([init/2]).

init(Req0, State) ->
    Command = #{
        <<"find">> => <<"orders">>,
        <<"filter">> => #{},
        <<"projection">> => #{<<"_id">> => 0},
        <<"skip">> => 1000,
        <<"limit">> => 100,
        <<"batchSize">> => 100
    },
    case mongo_pool:command(Command) of
        {true, #{<<"cursor">> := #{<<"firstBatch">> := Docs}}} ->
            CleanDocs = [convert_doc(Doc) || Doc <- Docs],
            Response = jsx:encode(CleanDocs),
            Req = cowboy_req:reply(200,
                #{<<"content-type">> => <<"application/json">>},
                Response,
                Req0),
            {ok, Req, State};
        Other ->
            ErrorMsg = io_lib:format("~p", [Other]),
            Req = cowboy_req:reply(500,
                #{<<"content-type">> => <<"application/json">>},
                jsx:encode(#{<<"error">> => iolist_to_binary(ErrorMsg)}),
                Req0),
            {ok, Req, State}
    end.

%% Convert a BSON document to a JSX-encodable map
convert_doc(Doc) when is_map(Doc) ->
    maps:fold(fun(Key, Val, Acc) ->
        Acc#{Key => convert_value(Val)}
    end, #{}, Doc);
convert_doc(Doc) ->
    Doc.

%% Convert BSON values to JSX-encodable Erlang terms
convert_value({utc, {MegaSec, Sec, _}}) ->
    %% erlang:now() style tuple (mongodb-erlang date format)
    {{Y, Mo, D}, {H, Min, S}} = calendar:now_to_universal_time({MegaSec, Sec, 0}),
    iolist_to_binary(io_lib:format("~4..0B-~2..0B-~2..0BT~2..0B:~2..0B:~2..0BZ",
                                   [Y, Mo, D, H, Min, S]));
convert_value({ms, Ms}) ->
    %% Milliseconds since Unix epoch
    Secs = Ms div 1000,
    BaseGregorian = 62167219200,
    {{Y, Mo, D}, {H, Min, S}} = calendar:gregorian_seconds_to_datetime(Secs + BaseGregorian),
    iolist_to_binary(io_lib:format("~4..0B-~2..0B-~2..0BT~2..0B:~2..0B:~2..0BZ",
                                   [Y, Mo, D, H, Min, S]));
convert_value(Val) when is_binary(Val) -> Val;
convert_value(Val) when is_integer(Val) -> Val;
convert_value(Val) when is_float(Val) -> Val;
convert_value(Val) when is_atom(Val) -> atom_to_binary(Val, utf8);
convert_value(Val) when is_map(Val) -> convert_doc(Val);
convert_value(Val) when is_list(Val) -> [convert_value(V) || V <- Val];
convert_value(_) -> null.
