/**
 * Deno Parallel HTTP Server — Worker
 *
 * Each worker creates its own DB pool and HTTP server.
 * reusePort: true → SO_REUSEPORT allows multiple workers to share port 8000.
 */
import { Pool } from "https://deno.land/x/postgres@v0.19.3/mod.ts";

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

const pool = new Pool(DATABASE_URL, POOL_SIZE, true);

const ORDERS_QUERY = `
  SELECT id, customer_id, total_cents, status, created_at
  FROM orders
  LIMIT $1
  OFFSET $2
`;

async function handler(req: Request): Promise<Response> {
  const url = new URL(req.url);

  if (url.pathname === "/" && req.method === "GET") {
    return new Response(JSON.stringify({ message: "Hello, World!" }), {
      headers: { "Content-Type": "application/json" },
    });
  }

  if (url.pathname === "/orders" && req.method === "GET") {
    const client = await pool.connect();
    try {
      const result = await client.queryObject<Order>({
        text: ORDERS_QUERY,
        args: [100, 1000],
      });
      return new Response(JSON.stringify(result.rows), {
        headers: { "Content-Type": "application/json" },
      });
    } catch (error) {
      console.error("Database error:", error);
      return new Response(JSON.stringify({ error: "Database error" }), {
        status: 500,
        headers: { "Content-Type": "application/json" },
      });
    } finally {
      client.release();
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
