import { Hono } from "hono";
import { serve } from "@hono/node-server";
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

const app = new Hono();

// GET /
app.get("/", (c) => c.json({ message: "Hello, World!" }));

// GET /orders
app.get("/orders", async (c) => {
  const orders = await sql`
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT 100
    OFFSET 1000
  `;
  return c.json(orders);
});

serve(
  {
    fetch: app.fetch,
    port: 8000,
    hostname: "0.0.0.0",
  },
  () => {
    console.log("Hono server running at http://0.0.0.0:8000");
  },
);

process.on("SIGINT", async () => {
  await sql.end();
  process.exit(0);
});
