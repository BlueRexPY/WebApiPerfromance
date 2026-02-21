require "kemal"
require "pg"
require "json"

def build_db_url
  url = ENV["DATABASE_URL"]? || raise "DATABASE_URL environment variable is not set"
  if url.includes?("max_pool_size")
    url
  else
    "#{url}?initial_pool_size=10&max_pool_size=120&max_idle_pool_size=10"
  end
end

DB_POOL = DB.open(build_db_url)

struct Order
  include JSON::Serializable

  getter id : Int32
  getter customer_id : Int32
  getter total_cents : Int32
  getter status : String
  getter created_at : Time

  def initialize(@id, @customer_id, @total_cents, @status, @created_at)
  end
end

get "/" do |env|
  env.response.content_type = "application/json"
  {message: "Hello, World!"}.to_json
end

get "/orders" do |env|
  env.response.content_type = "application/json"
  orders = [] of Order

  DB_POOL.query("SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2", 100, 1000) do |rs|
    rs.each do
      orders << Order.new(
        rs.read(Int32),
        rs.read(Int32),
        rs.read(Int32),
        rs.read(String),
        rs.read(Time)
      )
    end
  end

  orders.to_json
end

Kemal.config do |config|
  config.port = 8000
  config.env = "production"
  config.logging = false
end

Kemal.run
