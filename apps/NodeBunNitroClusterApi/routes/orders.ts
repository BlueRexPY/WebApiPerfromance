import postgres from "postgres";

const WORKERS = parseInt(
  process.env.NITRO_CLUSTER_WORKERS || process.env.WORKERS || "1",
  10,
);

const sql = postgres(
  process.env.DATABASE_URL ??
    "postgresql://apiuser:apipassword@localhost:5432/ordersdb",
  {
    max: Math.ceil(120 / WORKERS),
    idle_timeout: 20,
    connect_timeout: 10,
    prepare: true,
  },
);

export default defineEventHandler(async () => {
  return sql`
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT 100
    OFFSET 1000
  `;
});
