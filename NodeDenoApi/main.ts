import { Pool } from "https://deno.land/x/postgres@v0.19.3/mod.ts";

interface Order {
  id: number;
  customer_id: number;
  total_cents: number;
  status: string;
  created_at: Date;
}

const DATABASE_URL = Deno.env.get("DATABASE_URL") || "";
const PORT = 8000;

const pool = new Pool(DATABASE_URL, 90, true);

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
      const result = await client.queryObject<Order>(ORDERS_QUERY, [100, 1000]);

      return new Response(JSON.stringify(result.rows), {
        headers: { "Content-Type": "application/json" },
      });
    } finally {
      client.release();
    }
  }

  return new Response("Not Found", { status: 404 });
}

console.log(`Deno server running on http://localhost:${PORT}`);
Deno.serve({ port: PORT }, handler);
