import express from "express";
import { MongoClient } from "mongodb";
import postgres from "postgres";

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

const MONGO_URL = process.env.MONGO_URL || "mongodb://mongodb:27017";

// Create PostgreSQL connection with pooling
const sql = postgres(DATABASE_URL, {
  max: 120,
  idle_timeout: 20,
  connect_timeout: 10,
  prepare: true,
});

// Create MongoDB client
const mongoClient = new MongoClient(MONGO_URL, { maxPoolSize: 120 });
await mongoClient.connect();
const mongoDb = mongoClient.db("ordersdb");

const app = express();

// Disable unnecessary middleware for performance
app.disable("x-powered-by");
app.disable("etag");

// GET /
app.get("/", (req, res) => {
  res.json({ message: "Hello, World!" });
});

// GET /postgresql/orders
app.get("/postgresql/orders", async (req, res) => {
  try {
    const orders = await sql`
      SELECT id, customer_id, total_cents, status, created_at
      FROM orders
      LIMIT 100
      OFFSET 1000
    `;
    res.json(orders);
  } catch (error) {
    console.error("Database error:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// GET /mongodb/orders
app.get("/mongodb/orders", async (req, res) => {
  try {
    const orders = await mongoDb
      .collection("orders")
      .find({}, { projection: { _id: 0 } })
      .skip(1000)
      .limit(100)
      .toArray();
    res.json(orders);
  } catch (error) {
    console.error("MongoDB error:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// Start server
const PORT = process.env.PORT || 8000;
const server = app.listen(PORT, "0.0.0.0", () => {
  console.log(`🚀 Express server running at http://0.0.0.0:${PORT}`);
});

// Graceful shutdown
process.on("SIGINT", async () => {
  console.log("\n🛑 Shutting down gracefully...");
  await sql.end();
  await mongoClient.close();
  server.close(() => {
    console.log("Server closed");
    process.exit(0);
  });
});
