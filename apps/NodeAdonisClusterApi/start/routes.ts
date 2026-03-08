import router from "@adonisjs/core/services/router";
import postgres from "postgres";

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

// Pool per worker — WORKERS env is set by docker-compose for cluster variants
const WORKERS = parseInt(process.env.WORKERS || "1", 10);

const sql = postgres(DATABASE_URL, {
  max: Math.ceil(120 / WORKERS),
  idle_timeout: 20,
  connect_timeout: 10,
  prepare: true,
});

router.get("/", async () => {
  return { message: "Hello, World!" };
});

router.get("/orders", async () => {
  return sql`
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT 100
    OFFSET 1000
  `;
});
