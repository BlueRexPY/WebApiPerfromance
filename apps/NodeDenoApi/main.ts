import { Pool } from "https://deno.land/x/postgres@v0.19.3/mod.ts";
import { MongoClient } from "npm:mongodb@6";

interface Order {
  id: number;
  customer_id: number;
  total_cents: number;
  status: string;
  created_at: Date;
}

const DATABASE_URL = Deno.env.get("DATABASE_URL") || "";
const MONGO_URL = Deno.env.get("MONGO_URL") || "mongodb://mongodb:27017";
const PORT = 8000;

// PostgreSQL pool
const pool = new Pool(DATABASE_URL, 120, true);

// MongoDB client
const mongoClient = new MongoClient(MONGO_URL, { maxPoolSize: 120 });
await mongoClient.connect();
const mongoDb = mongoClient.db("ordersdb");

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

  if (url.pathname === "/postgresql/orders" && req.method === "GET") {
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

  if (url.pathname === "/mongodb/orders" && req.method === "GET") {
    try {
      const orders = await mongoDb
        .collection("orders")
        .find({}, { projection: { _id: 0 } })
        .skip(1000)
        .limit(100)
        .toArray();
      return new Response(JSON.stringify(orders), {
        headers: { "Content-Type": "application/json" },
      });
    } catch (error) {
      console.error("MongoDB error:", error);
      return new Response(JSON.stringify({ error: "MongoDB error" }), {
        status: 500,
        headers: { "Content-Type": "application/json" },
      });
    }
  }

  return new Response("Not Found", { status: 404 });
}

console.log(`Deno server running on http://localhost:${PORT}`);
Deno.serve({ port: PORT }, handler);
