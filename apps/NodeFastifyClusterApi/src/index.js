import cluster from "cluster";
import Fastify from "fastify";
import postgres from "postgres";

const NUM_WORKERS = parseInt(process.env.WORKERS || "2", 10);

if (cluster.isPrimary) {
  console.log(
    `Primary ${process.pid} is running — forking ${NUM_WORKERS} workers`,
  );

  for (let i = 0; i < NUM_WORKERS; i++) {
    cluster.fork();
  }

  cluster.on("exit", (worker, code, signal) => {
    console.log(
      `Worker ${worker.process.pid} died (${signal || code}) — restarting`,
    );
    cluster.fork();
  });
} else {
  const DATABASE_URL =
    process.env.DATABASE_URL ||
    "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

  const sql = postgres(DATABASE_URL, {
    max: Math.ceil(120 / NUM_WORKERS),
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

  fastify.get("/", async () => {
    return { message: "Hello, World!" };
  });

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

  const start = async () => {
    try {
      await fastify.listen({ port: 8000, host: "0.0.0.0" });
      console.log(
        `Worker ${process.pid} — Fastify server at http://0.0.0.0:8000`,
      );
    } catch (err) {
      console.error(err);
      process.exit(1);
    }
  };

  process.on("SIGINT", async () => {
    await sql.end();
    await fastify.close();
    process.exit(0);
  });

  start();
}
