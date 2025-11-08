-module(hello_handler).
-export([init/2]).

init(Req0, State) ->
    Response = jsx:encode(#{<<"message">> => <<"Hello, World!">>}),
    Req = cowboy_req:reply(200,
        #{<<"content-type">> => <<"application/json">>},
        Response,
        Req0),
    {ok, Req, State}.
