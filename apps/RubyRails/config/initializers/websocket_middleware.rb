require "faye/websocket"

Faye::WebSocket.load_adapter("puma")

class WebSocketMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    return @app.call(env) unless Faye::WebSocket.websocket?(env)

    path = env["REQUEST_PATH"] || env["PATH_INFO"]
    ws = Faye::WebSocket.new(env)

    if path == "/ws/echo"
      ws.on :message do |event|
        ws.send(event.data)
      end

    elsif path == "/ws/orders"
      ws.on :message do |_event|
        rows = []
        conn = ActiveRecord::Base.connection
        result = conn.exec_query(
          "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000"
        )
        result.each do |row|
          rows << {
            id:          row["id"],
            customer_id: row["customer_id"],
            total_cents: row["total_cents"],
            status:      row["status"],
            created_at:  row["created_at"]
          }
        end
        ws.send(Oj.dump(rows, mode: :compat))
        ws.close
      end
    end

    ws.rack_response
  end
end
