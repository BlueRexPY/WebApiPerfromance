defmodule ElixirPhoenixApi.WsEchoHandler do
  @behaviour :cowboy_websocket

  def init(req, state) do
    {:cowboy_websocket, req, state, %{idle_timeout: 60_000}}
  end

  def websocket_handle({:text, msg}, state) do
    {:reply, {:text, msg}, state}
  end

  def websocket_handle(_, state) do
    {:ok, state}
  end

  def websocket_info(_, state) do
    {:ok, state}
  end
end
