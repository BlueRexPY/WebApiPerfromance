import postgres from "npm:postgres";

interface Order {
  id: number;
  customer_id: number;
  total_cents: number;
  status: string;
  created_at: Date;
}

const DATABASE_URL = Deno.env.get("DATABASE_URL") || "";
const PORT = 8000;

const sql = postgres(DATABASE_URL, {
  max: 120,
  idle_timeout: 20,
  connect_timeout: 10,
  prepare: true,
});

// Module-level PendingQuery — prepared statement cached on first execution
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

console.log(`Deno server running on http://localhost:${PORT}`);
Deno.serve({ port: PORT }, handler);
