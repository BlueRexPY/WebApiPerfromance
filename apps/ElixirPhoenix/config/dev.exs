import Config

database_url = System.get_env("DATABASE_URL") || "postgresql://apiuser:apipassword@localhost:5432/ordersdb"

config :elixir_phoenix_api, ElixirPhoenixApi.Repo,
  url: database_url,
  show_sensitive_data_on_connection_error: true,
  pool_size: 90
