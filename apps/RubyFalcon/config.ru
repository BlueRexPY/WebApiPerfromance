# frozen_string_literal: true

require "pg"
require "connection_pool"
require "json"
require "uri"

DATABASE_URL = ENV.fetch("DATABASE_URL", "postgresql://apiuser:apipassword@db:5432/ordersdb")

uri = URI.parse(DATABASE_URL)

DB_POOL = ConnectionPool.new(size: 120, timeout: 10) do
  PG.connect(
    host:     uri.host,
    port:     uri.port || 5432,
    dbname:   uri.path.delete_prefix("/"),
    user:     uri.user,
    password: uri.password
  )
end

HELLO_JSON = JSON.generate({ message: "Hello, World!" }).freeze
JSON_HEADER = { "content-type" => "application/json" }.freeze

App = lambda do |env|
  path = env["PATH_INFO"]

  case path
  when "/"
    [200, JSON_HEADER, [HELLO_JSON]]

  when "/orders"
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
    [200, JSON_HEADER, [JSON.generate(rows)]]

  else
    [404, JSON_HEADER, ['{"error":"not found"}']]
  end
end

run App
