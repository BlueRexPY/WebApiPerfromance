import uWS from "uWebSockets.js";
import pg from "pg";

const { Pool } = pg;

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

const pool = new Pool({
  connectionString: DATABASE_URL,
  max: 120,
  idleTimeoutMillis: 30_000,
  connectionTimeoutMillis: 2000,
});

const app = uWS.App();

app.get("/", (res) => {
  res.writeHeader("Content-Type", "application/json");
  res.end(JSON.stringify({ message: "Hello, World!" }));
});

app.get("/orders", (res) => {
  let aborted = false;
  res.onAborted(() => {
    aborted = true;
  });

  pool
    .query(
      "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
      [100, 1000],
    )
    .then((result) => {
      if (!aborted) {
        res.writeHeader("Content-Type", "application/json");
        res.end(JSON.stringify(result.rows));
      }
    })
    .catch(() => {
      if (!aborted) {
        res.writeStatus("500 Internal Server Error");
        res.writeHeader("Content-Type", "text/plain");
        res.end("Internal server error");
      }
    });
});

app.ws("/ws/echo", {
  message: (ws, message, isBinary) => {
    ws.send(message, isBinary);
  },
});

app.ws("/ws/orders", {
  message: (ws) => {
    pool
      .query(
        "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
        [100, 1000],
      )
      .then((result) => {
        const data = Buffer.from(JSON.stringify(result.rows));
        ws.send(data, false);
      })
      .catch(() => {});
  },
});

app.listen(8000, (token) => {
  if (token) {
    console.log("uWebSockets.js server listening on port 8000");
  } else {
    console.error("Failed to start server on port 8000");
    process.exit(1);
  }
});
