import express from "express";
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

const getOrdersQuery = sql`
  SELECT id, customer_id, total_cents, status, created_at
  FROM orders
  LIMIT 100
  OFFSET 1000
`;

const app = express();

// Disable unnecessary middleware for performance
app.disable("x-powered-by");
app.disable("etag");

// GET /
app.get("/", (req, res) => {
  res.json({ message: "Hello, World!" });
});

// GET /orders
app.get("/orders", async (req, res) => {
  try {
    const orders = await getOrdersQuery;
    res.json(orders);
  } catch (error) {
    console.error("Database error:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// Start server
const PORT = process.env.PORT || 8000;
const server = app.listen(PORT, "0.0.0.0", () => {
  console.log(`🚀 Express server on Bun running at http://0.0.0.0:${PORT}`);
});

// Graceful shutdown
process.on("SIGINT", async () => {
  console.log("\n🛑 Shutting down gracefully...");
  await sql.end();
  server.close(() => {
    console.log("Server closed");
    process.exit(0);
  });
});
