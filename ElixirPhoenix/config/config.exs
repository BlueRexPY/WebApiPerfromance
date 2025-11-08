import Config

config :elixir_phoenix_api, ElixirPhoenixApi.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: ElixirPhoenixApi.ErrorView, accepts: ~w(json)],
  pubsub_server: ElixirPhoenixApi.PubSub,
  http: [port: 8000],
  server: true

config :elixir_phoenix_api, ElixirPhoenixApi.Repo,
  pool_size: 90,
  queue_target: 50,
  queue_interval: 1000

config :logger, level: :warning

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
