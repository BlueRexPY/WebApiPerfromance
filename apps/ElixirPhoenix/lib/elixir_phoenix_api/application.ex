defmodule ElixirPhoenixApi.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ElixirPhoenixApi.Repo,
      {Phoenix.PubSub, name: ElixirPhoenixApi.PubSub},
      ElixirPhoenixApi.Endpoint,
      {Plug.Cowboy,
       scheme: :http,
       plug: ElixirPhoenixApi.Endpoint,
       options: [
         port: 8000,
         transport_options: [num_acceptors: 100],
         dispatch: [
             {:_,
              [
                {"/ws/echo",   ElixirPhoenixApi.WsEchoHandler,   []},
                {"/ws/orders", ElixirPhoenixApi.WsOrdersHandler, []},
                {:_,           Plug.Cowboy.Handler, {ElixirPhoenixApi.Endpoint, []}}
              ]}
           ]
       ]}
    ]

    opts = [strategy: :one_for_one, name: ElixirPhoenixApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    ElixirPhoenixApi.Endpoint.config_change(changed, removed)
    :ok
  end
end
