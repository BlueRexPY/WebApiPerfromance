$LOAD_PATH.unshift File.dirname(__FILE__)
require "app"
require "faye/websocket"

Faye::WebSocket.load_adapter("puma")

ws_app = lambda do |env|
  if Faye::WebSocket.websocket?(env)
    path = env["REQUEST_PATH"] || env["PATH_INFO"]

    ws = Faye::WebSocket.new(env)

    if path == "/ws/echo"
      ws.on :message do |event|
        ws.send(event.data)
      end
    elsif path == "/ws/orders"
      ws.on :message do |_event|
        rows = []
        DB_POOL.with do |conn|
          result = conn.exec_params(
            "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
            [100, 1000]
          )
          result.each do |row|
            rows << {
              id:          row["id"].to_i,
              customer_id: row["customer_id"].to_i,
              total_cents: row["total_cents"].to_i,
              status:      row["status"],
              created_at:  row["created_at"]
            }
          end
        end
        ws.send(Oj.dump(rows))
        ws.close
      end
    end

    ws.rack_response
  else
    App.call(env)
  end
end

run ws_app
