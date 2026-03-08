import { Elysia } from "elysia";
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

const query = sql`
      SELECT id, customer_id, total_cents, status, created_at
      FROM orders
      LIMIT 100
      OFFSET 1000
`;

const app = new Elysia()
  .get("/", () => ({ message: "Hello, World!" }))
  .get("/orders", async () => {
    return await query;
  })
  .listen({ port: 8000, hostname: "0.0.0.0" });

console.log(
  `🚀 Elysia server on Bun running at http://0.0.0.0:${app.server?.port}`,
);

process.on("SIGINT", async () => {
  console.log("\n🛑 Shutting down gracefully...");
  await sql.end();
  await app.stop();
  process.exit(0);
});
