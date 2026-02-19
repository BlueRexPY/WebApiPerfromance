defmodule ElixirPhoenixApi.PageController do
  use Phoenix.Controller, formats: [:json]
  import Ecto.Query
  alias ElixirPhoenixApi.Repo

  def hello(conn, _params) do
    json(conn, %{message: "Hello, World!"})
  end

  def orders(conn, _params) do
    orders =
      from(o in "orders",
        select: %{
          id: o.id,
          customer_id: o.customer_id,
          total_cents: o.total_cents,
          status: o.status,
          created_at: o.created_at
        },
        limit: 100,
        offset: 1000
      )
      |> Repo.all()

    json(conn, orders)
  end

  def mongodb_orders(conn, _params) do
    docs =
      Mongo.find(:mongo, "orders", %{},
        skip: 1000,
        limit: 100,
        projection: %{"_id" => 0}
      )
      |> Enum.to_list()

    json(conn, docs)
  end
end
