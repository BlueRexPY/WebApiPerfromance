-module(db_worker).
-behaviour(gen_server).

-export([start_link/1]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

-record(state, {conn}).

start_link(Args) ->
    gen_server:start_link(?MODULE, Args, []).

init(Args) ->
    Host = proplists:get_value(host, Args),
    Port = proplists:get_value(port, Args),
    Database = proplists:get_value(database, Args),
    Username = proplists:get_value(username, Args),
    Password = proplists:get_value(password, Args),
    
    {ok, Conn} = epgsql:connect(#{
        host => Host,
        port => Port,
        database => Database,
        username => Username,
        password => Password
    }),
    
    {ok, #state{conn = Conn}}.

handle_call({query, Sql, Params, _Opts}, _From, State = #state{conn = Conn}) ->
    Result = epgsql:equery(Conn, Sql, Params),
    {reply, Result, State};

handle_call(_Request, _From, State) ->
    {reply, ok, State}.

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, #state{conn = Conn}) ->
    epgsql:close(Conn),
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.
