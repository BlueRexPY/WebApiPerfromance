import Fastify from "fastify";
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

const fastify = Fastify({
  logger: false,
  disableRequestLogging: true,
  requestIdHeader: false,
  requestIdLogLabel: false,
});

// GET /
fastify.get("/", async (request, reply) => {
  return { message: "Hello, World!" };
});

// GET /orders
fastify.get("/orders", async (request, reply) => {
  try {
    const orders = await sql`
      SELECT id, customer_id, total_cents, status, created_at
      FROM orders
      LIMIT 100
      OFFSET 1000
    `;
    return orders;
  } catch (error) {
    console.error("Database error:", error);
    reply.code(500).send({ error: "Internal server error" });
  }
});

// Start server
const start = async () => {
  try {
    await fastify.listen({ port: 8000, host: "0.0.0.0" });
    console.log(`🚀 Fastify server running at http://0.0.0.0:8000`);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
};

// Graceful shutdown
process.on("SIGINT", async () => {
  console.log("\n🛑 Shutting down gracefully...");
  await sql.end();
  await fastify.close();
  process.exit(0);
});

start();
