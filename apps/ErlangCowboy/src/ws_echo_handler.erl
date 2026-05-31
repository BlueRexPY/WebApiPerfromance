-module(ws_echo_handler).
-behaviour(cowboy_websocket).

-export([init/2, websocket_handle/2, websocket_info/2]).

init(Req, State) ->
    {cowboy_websocket, Req, State}.

websocket_handle({text, Msg}, State) ->
    {reply, {text, Msg}, State};
websocket_handle(_, State) ->
    {ok, State}.

websocket_info(_, State) ->
    {ok, State}.
