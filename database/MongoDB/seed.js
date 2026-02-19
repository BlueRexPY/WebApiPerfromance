// MongoDB seed script — runs once on first container init via /docker-entrypoint-initdb.d/
// Mirrors the PostgreSQL orders schema: id, customer_id, total_cents, status, created_at

db = db.getSiblingDB("ordersdb");

db.orders.drop();

const statuses = [
  "pending",
  "processing",
  "completed",
  "cancelled",
  "refunded",
];
const now = new Date().getTime();
const year = 365 * 24 * 60 * 60 * 1000;

const orders = [];
for (let i = 1; i <= 10_000; i++) {
  orders.push({
    id: NumberInt(i),
    customer_id: NumberInt(Math.floor(Math.random() * 1000) + 1),
    total_cents: NumberInt(Math.floor(Math.random() * 99_900) + 100),
    status: statuses[Math.floor(Math.random() * statuses.length)],
    created_at: new Date(now - Math.random() * year),
  });
}

db.orders.insertMany(orders);

db.orders.createIndex({ customer_id: 1 });
db.orders.createIndex({ created_at: 1 });
db.orders.createIndex({ id: 1 }, { unique: true });

print(
  "MongoDB: seeded ordersdb.orders with " +
    db.orders.countDocuments() +
    " documents",
);
