defmodule ElixirPlugApi.WsOrdersHandler do
  @behaviour :cowboy_websocket

  def init(req, state) do
    {:cowboy_websocket, req, state, %{idle_timeout: 60_000}}
  end

  def websocket_handle({:text, _}, state) do
    query =
      "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2"

    case Postgrex.query(:db, query, [100, 1000]) do
      {:ok, result} ->
        orders =
          Enum.map(result.rows, fn [id, cid, tc, st, ca] ->
            %{
              id: id,
              customer_id: cid,
              total_cents: tc,
              status: st,
              created_at: ca
            }
          end)

        json = Jason.encode!(orders)
        {:reply, {:text, json}, state}

      {:error, _} ->
        {:ok, state}
    end
  end

  def websocket_handle(_, state) do
    {:ok, state}
  end

  def websocket_info(_, state) do
    {:ok, state}
  end
end
