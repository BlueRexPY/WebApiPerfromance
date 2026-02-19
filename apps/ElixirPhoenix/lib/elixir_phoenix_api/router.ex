defmodule ElixirPhoenixApi.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirPhoenixApi do
    pipe_through :api

    get "/", PageController, :hello
    get "/postgresql/orders", PageController, :orders
    get "/mongodb/orders", PageController, :mongodb_orders
  end
end
