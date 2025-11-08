defmodule ElixirPhoenixApi.PageController do
  use Phoenix.Controller, formats: [:json]
  import Ecto.Query
  alias ElixirPhoenixApi.Repo

  def hello(conn, _params) do
    json(conn, %{message: "Hello, World!"})
  end

  def orders(conn, _params) do
    query = """
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT $1
    OFFSET $2
    """

    result = Ecto.Adapters.SQL.query!(Repo, query, [100, 1000])

    orders = Enum.map(result.rows, fn [id, customer_id, total_cents, status, created_at] ->
      %{
        id: id,
        customer_id: customer_id,
        total_cents: total_cents,
        status: status,
        created_at: created_at
      }
    end)

    json(conn, orders)
  end
end
