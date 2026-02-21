import cluster from "cluster";
import Koa from "koa";
import Router from "@koa/router";
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

  const app = new Koa();
  const router = new Router();

  app.silent = true;

  router.get("/", (ctx) => {
    ctx.type = "application/json";
    ctx.body = { message: "Hello, World!" };
  });

  router.get("/orders", async (ctx) => {
    const orders = await sql`
      SELECT id, customer_id, total_cents, status, created_at
      FROM orders
      LIMIT 100
      OFFSET 1000
    `;
    ctx.type = "application/json";
    ctx.body = orders;
  });

  app.use(router.routes()).use(router.allowedMethods());

  const server = app.listen(8000, "0.0.0.0", () => {
    console.log(
      `Worker ${process.pid} — Koa/Bun server at http://0.0.0.0:8000`,
    );
  });

  process.on("SIGINT", async () => {
    server.close();
    await sql.end();
    process.exit(0);
  });
}
