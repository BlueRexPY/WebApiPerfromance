-module(mongo_worker).
-behaviour(gen_server).

-export([start_link/1]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

-record(state, {conn}).

start_link(Args) ->
    gen_server:start_link(?MODULE, Args, []).

init(Args) ->
    Host = proplists:get_value(host, Args, "mongodb"),
    Port = proplists:get_value(port, Args, 27017),
    Database = proplists:get_value(database, Args, <<"ordersdb">>),
    {ok, Conn} = mc_worker_api:connect([
        {host, Host},
        {port, Port},
        {database, Database}
    ]),
    {ok, #state{conn = Conn}}.

handle_call({command, Command}, _From, State = #state{conn = Conn}) ->
    Result = mc_worker_api:command(Conn, Command),
    {reply, Result, State};

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, #state{conn = Conn}) ->
    mc_worker_api:disconnect(Conn),
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.
