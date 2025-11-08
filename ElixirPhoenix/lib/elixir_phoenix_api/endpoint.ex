defmodule ElixirPhoenixApi.Endpoint do
  use Phoenix.Endpoint, otp_app: :elixir_phoenix_api

  plug Plug.RequestId
  plug Plug.Parsers,
    parsers: [:json],
    pass: ["*/*"],
    json_decoder: Jason

  plug ElixirPhoenixApi.Router
end
