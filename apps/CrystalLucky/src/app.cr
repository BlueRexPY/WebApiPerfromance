require "lucky"
require "pg"
require "json"

# ── Server configuration ───────────────────────────────────────────────────────
Lucky::Server.configure do |settings|
  settings.secret_key_base = "benchmarksecretkey00000000000000000000000000000"
  settings.host = "0.0.0.0"
  settings.port = 8000
end

Lucky::Session.configure do |settings|
  settings.key = "_lucky_session"
end

Lucky::RouteHelper.configure do |settings|
  settings.base_uri = "http://localhost:8000"
end

Lucky::ErrorHandler.configure do |settings|
  settings.show_debug_output = false
end

Lucky::ForceSSLHandler.configure do |settings|
  settings.enabled = false
end

# ── Database setup ─────────────────────────────────────────────────────────────
def build_db_url : String
  url = ENV["DATABASE_URL"]? || raise "DATABASE_URL environment variable is not set"
  url.includes?("max_pool_size") ? url : "#{url}?initial_pool_size=10&max_pool_size=120&max_idle_pool_size=10"
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

# ── Base action ────────────────────────────────────────────────────────────────
abstract class ApiAction < Lucky::Action
  accepted_formats [:json], default: :json
end

# ── Actions ────────────────────────────────────────────────────────────────────
class Home::Index < ApiAction
  get "/" do
    json({"message" => "Hello, World!"})
  end
end

class Orders::Index < ApiAction
  get "/orders" do
    orders = [] of Order

    DB_POOL.query(
      "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
      100, 1000
    ) do |rs|
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

    json(orders)
  end
end

# ── App server ─────────────────────────────────────────────────────────────────
class AppServer < Lucky::BaseAppServer
  def middleware : Array(HTTP::Handler)
    [
      Lucky::RouteHandler.new,
    ] of HTTP::Handler
  end

  def listen
    server.listen(host, port, reuse_port: false)
  end
end

Habitat.raise_if_missing_settings!
AppServer.new.listen
