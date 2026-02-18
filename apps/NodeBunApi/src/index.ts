import postgres from "postgres";

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

// Create PostgreSQL connection with pooling
const sql = postgres(DATABASE_URL, {
  max: 120,
  idle_timeout: 20,
  connect_timeout: 10,
  prepare: true,
});

interface Order {
  id: number;
  customer_id: number;
  total_cents: number;
  status: string;
  created_at: Date;
}

interface HelloResponse {
  message: string;
}

// Prepared query
const getOrdersQuery = sql`
  SELECT id, customer_id, total_cents, status, created_at
  FROM orders
  LIMIT 100
  OFFSET 1000
`;

const server = Bun.serve({
  port: 8000,
  hostname: "0.0.0.0",
  async fetch(req) {
    const url = new URL(req.url);

    // GET /
    if (url.pathname === "/") {
      const response: HelloResponse = { message: "Hello, World!" };
      return new Response(JSON.stringify(response), {
        headers: { "Content-Type": "application/json" },
      });
    }

    // GET /orders
    if (url.pathname === "/orders") {
      try {
        const orders = await getOrdersQuery;
        return new Response(JSON.stringify(orders), {
          headers: { "Content-Type": "application/json" },
        });
      } catch (error) {
        console.error("Database error:", error);
        return new Response(
          JSON.stringify({ error: "Internal server error" }),
          {
            status: 500,
            headers: { "Content-Type": "application/json" },
          },
        );
      }
    }

    // 404
    return new Response("Not Found", { status: 404 });
  },
});

console.log(
  `🚀 Bun server running at http://${server.hostname}:${server.port}`,
);

// Graceful shutdown
process.on("SIGINT", async () => {
  console.log("\n🛑 Shutting down gracefully...");
  await sql.end();
  process.exit(0);
});
