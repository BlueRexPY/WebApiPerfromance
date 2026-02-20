require "sinatra/base"
require "pg"
require "connection_pool"
require "oj"
require "uri"

Oj.default_options = { mode: :compat }

DATABASE_URL = ENV.fetch("DATABASE_URL", "postgresql://apiuser:apipassword@localhost:5432/ordersdb")

# Parse DATABASE_URL into PG::Connection args
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

class App < Sinatra::Base
  disable :logging
  disable :dump_errors
  set :show_exceptions, false

  before do
    content_type "application/json"
  end

  get "/" do
    Oj.dump({ message: "Hello, World!" })
  end

  get "/orders" do
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
    Oj.dump(rows)
  end
end
