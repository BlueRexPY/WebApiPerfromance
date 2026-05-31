defmodule ElixirPlugApi.Application do
  use Application

  @impl true
  def start(_type, _args) do
    db_url = System.get_env("DATABASE_URL") ||
      "postgresql://apiuser:apipassword@localhost:5432/ordersdb"

    # Plug.Cowboy compiles the dispatch internally — pass raw routes, not
    # the result of :cowboy_router.compile/1, to avoid double-compilation.
    dispatch = [
      {:_,
       [
         {"/ws/echo",   ElixirPlugApi.WsEchoHandler,   []},
         {"/ws/orders", ElixirPlugApi.WsOrdersHandler, []},
         {:_,           Plug.Cowboy.Handler, {ElixirPlugApi.Router, []}}
       ]}
    ]

    children = [
      {Postgrex, postgrex_config(db_url)},
      {Plug.Cowboy, scheme: :http, plug: ElixirPlugApi.Router,
                    options: [port: 8000, transport_options: [num_acceptors: 100],
                              dispatch: dispatch]}
    ]

    opts = [strategy: :one_for_one, name: ElixirPlugApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp postgrex_config(url) do
    uri = URI.parse(url)
    [userinfo: userinfo, host: host, port: port, path: "/" <> dbname] =
      [userinfo: uri.userinfo, host: uri.host, port: uri.port || 5432, path: uri.path]
    [user, password] = String.split(userinfo || "apiuser:apipassword", ":", parts: 2)

    [
      name: :db,
      hostname: host,
      port: port,
      database: dbname,
      username: user,
      password: password,
      pool_size: 120,
      queue_target: 50,
      queue_interval: 1000
    ]
  end
end
