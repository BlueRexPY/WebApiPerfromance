defmodule ElixirPlugApi.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    json = Jason.encode!(%{message: "Hello, World!"})
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, json)
  end

  get "/orders" do
    query = """
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT $1 OFFSET $2
    """

    case Postgrex.query(:db, query, [100, 1000]) do
      {:ok, result} ->
        orders =
          Enum.map(result.rows, fn [id, customer_id, total_cents, status, created_at] ->
            %{
              id: id,
              customer_id: customer_id,
              total_cents: total_cents,
              status: status,
              created_at: created_at
            }
          end)

        json = Jason.encode!(orders)

        conn
        |> put_resp_content_type("application/json")
        |> send_resp(200, json)

      {:error, reason} ->
        conn
        |> put_resp_content_type("application/json")
        |> send_resp(500, Jason.encode!(%{error: inspect(reason)}))
    end
  end

  match _ do
    send_resp(conn, 404, "Not Found")
  end
end
