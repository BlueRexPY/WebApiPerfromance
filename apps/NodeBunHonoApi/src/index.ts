import { Hono } from "hono";
import postgres from "postgres";

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

const sql = postgres(DATABASE_URL, {
  max: 120,
  idle_timeout: 20,
  connect_timeout: 10,
  prepare: true,
});

// Prepared query
const getOrdersQuery = sql`
  SELECT id, customer_id, total_cents, status, created_at
  FROM orders
  LIMIT 100
  OFFSET 1000
`;

const app = new Hono();

// GET /
app.get("/", (c) => c.json({ message: "Hello, World!" }));

// GET /orders
app.get("/orders", async (c) => {
  const orders = await getOrdersQuery;
  return c.json(orders);
});

// Start server using Bun's native HTTP server (no @hono/node-server needed)
const server = Bun.serve({
  port: 8000,
  hostname: "0.0.0.0",
  fetch: app.fetch,
});

console.log(
  `🚀 Hono server on Bun running at http://${server.hostname}:${server.port}`,
);

// Graceful shutdown
process.on("SIGINT", async () => {
  console.log("\n🛑 Shutting down gracefully...");
  await sql.end();
  server.stop();
  process.exit(0);
});
