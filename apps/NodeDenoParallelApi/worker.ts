/**
 * Deno Parallel HTTP Server — Worker
 *
 * Each worker creates its own DB pool and HTTP server.
 * reusePort: true → SO_REUSEPORT allows multiple workers to share port 8000.
 *
 * Uses npm:postgres (same porsager/postgres driver as Bun/Node) for binary-
 * protocol PG access, significantly faster than deno.land/x/postgres.
 */
import postgres from "npm:postgres";

interface Order {
  id: number;
  customer_id: number;
  total_cents: number;
  status: string;
  created_at: Date;
}

const DATABASE_URL = Deno.env.get("DATABASE_URL") ?? "";
const NUM_WORKERS = parseInt(Deno.env.get("WORKERS") ?? "2", 10);
// Each worker gets an equal share of the total 120-connection budget
const POOL_SIZE = Math.ceil(120 / NUM_WORKERS);

const sql = postgres(DATABASE_URL, {
  max: POOL_SIZE,
  idle_timeout: 20,
  connect_timeout: 10,
  prepare: true,
});

// Module-level PendingQuery — prepared statement is cached on the DB server
const getOrdersQuery = sql<Order[]>`
  SELECT id, customer_id, total_cents, status, created_at
  FROM orders
  LIMIT 100
  OFFSET 1000
`;

async function handler(req: Request): Promise<Response> {
  const url = new URL(req.url);

  if (url.pathname === "/" && req.method === "GET") {
    return new Response(JSON.stringify({ message: "Hello, World!" }), {
      headers: { "Content-Type": "application/json" },
    });
  }

  if (url.pathname === "/orders" && req.method === "GET") {
    try {
      const orders = await getOrdersQuery;
      return new Response(JSON.stringify(orders), {
        headers: { "Content-Type": "application/json" },
      });
    } catch (error) {
      console.error("Database error:", error);
      return new Response(JSON.stringify({ error: "Database error" }), {
        status: 500,
        headers: { "Content-Type": "application/json" },
      });
    }
  }

  return new Response("Not Found", { status: 404 });
}

Deno.serve(
  {
    port: 8000,
    hostname: "0.0.0.0",
    // SO_REUSEPORT — lets multiple workers bind to the same port
    reusePort: true,
    onListen: ({ port }) => {
      console.log(`Worker ${self.name || "?"} — Deno server on port ${port}`);
    },
  },
  handler,
);
