import postgres from "postgres";

const sql = postgres(
  process.env.DATABASE_URL ??
    "postgresql://apiuser:apipassword@localhost:5432/ordersdb",
  {
    max: 120,
    idle_timeout: 20,
    connect_timeout: 10,
    prepare: true,
  },
);

export default defineWebSocketHandler({
  async message(peer) {
    const orders = await sql`
      SELECT id, customer_id, total_cents, status, created_at
      FROM orders
      LIMIT 100
      OFFSET 1000
    `;
    peer.send(JSON.stringify(orders));
  },
});
