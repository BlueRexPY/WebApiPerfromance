import envoy
import gleam/dynamic/decode
import gleam/erlang/process
import gleam/json
import mist
import pog
import wisp
import wisp/wisp_mist

// ── Types ─────────────────────────────────────────────────────────────────────

type Order {
  Order(
    id: Int,
    customer_id: Int,
    total_cents: Int,
    status: String,
    created_at: String,
  )
}

// ── Database ──────────────────────────────────────────────────────────────────

fn start_db() -> pog.Connection {
  let database_url = case envoy.get("DATABASE_URL") {
    Ok(url) -> url
    Error(_) -> panic as "DATABASE_URL environment variable is not set"
  }

  let pool_name = process.new_name(prefix: "db_pool")

  let config = case pog.url_config(pool_name, database_url) {
    Ok(c) -> c
    Error(_) -> panic as "Invalid DATABASE_URL"
  }

  let assert Ok(_) =
    config
    |> pog.pool_size(120)
    |> pog.start()

  pog.named_connection(pool_name)
}

// ── Row decoder ───────────────────────────────────────────────────────────────

fn order_decoder() -> decode.Decoder(Order) {
  use id <- decode.field(0, decode.int)
  use customer_id <- decode.field(1, decode.int)
  use total_cents <- decode.field(2, decode.int)
  use status <- decode.field(3, decode.string)
  use created_at <- decode.field(4, decode.string)
  decode.success(Order(id, customer_id, total_cents, status, created_at))
}

// ── JSON encoders ─────────────────────────────────────────────────────────────

fn encode_order(order: Order) -> json.Json {
  json.object([
    #("id", json.int(order.id)),
    #("customer_id", json.int(order.customer_id)),
    #("total_cents", json.int(order.total_cents)),
    #("status", json.string(order.status)),
    #("created_at", json.string(order.created_at)),
  ])
}

// ── Handlers ──────────────────────────────────────────────────────────────────

fn handle_request(req: wisp.Request, db: pog.Connection) -> wisp.Response {
  case wisp.path_segments(req) {
    [] -> hello_response()
    ["orders"] -> orders_response(db)
    _ -> wisp.not_found()
  }
}

fn hello_response() -> wisp.Response {
  let body =
    json.object([#("message", json.string("Hello, World!"))])
    |> json.to_string()
  wisp.json_response(body, 200)
}

fn orders_response(db: pog.Connection) -> wisp.Response {
  let sql =
    "SELECT id, customer_id, total_cents, status, created_at::text
     FROM orders LIMIT $1 OFFSET $2"

  let query_result =
    pog.query(sql)
    |> pog.parameter(pog.int(100))
    |> pog.parameter(pog.int(1000))
    |> pog.returning(order_decoder())
    |> pog.execute(db)

  case query_result {
    Ok(pog.Returned(_, rows)) -> {
      let body = json.array(rows, encode_order) |> json.to_string()
      wisp.json_response(body, 200)
    }
    Error(_) -> wisp.internal_server_error()
  }
}

// ── Main ──────────────────────────────────────────────────────────────────────

pub fn main() {
  wisp.configure_logger()

  let db = start_db()
  let secret_key_base = wisp.random_string(64)
  let handler = fn(req) { handle_request(req, db) }

  let assert Ok(_) =
    handler
    |> wisp_mist.handler(secret_key_base)
    |> mist.new()
    |> mist.port(8000)
    |> mist.bind("0.0.0.0")
    |> mist.start()

  process.sleep_forever()
}
