import Koa from "koa";
import Router from "@koa/router";
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

const app = new Koa();
const router = new Router();

// Disable default error output to keep logs clean
app.silent = true;

// GET /
router.get("/", (ctx) => {
  ctx.type = "application/json";
  ctx.body = { message: "Hello, World!" };
});

// GET /orders
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
  console.log("Koa server running at http://0.0.0.0:8000");
});

process.on("SIGINT", async () => {
  server.close();
  await sql.end();
  process.exit(0);
});
