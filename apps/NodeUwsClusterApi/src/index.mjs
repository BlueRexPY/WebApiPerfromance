import cluster from "cluster";
import uWS from "uWebSockets.js";
import pg from "pg";

const { Pool } = pg;

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

  const pool = new Pool({
    connectionString: DATABASE_URL,
    max: Math.ceil(120 / NUM_WORKERS),
    idleTimeoutMillis: 30_000,
    connectionTimeoutMillis: 2000,
  });

  const HELLO_JSON = JSON.stringify({ message: "Hello, World!" });

  const app = uWS.App();

  app.get("/", (res) => {
    res.writeHeader("Content-Type", "application/json");
    res.end(HELLO_JSON);
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

  app.listen(8000, (token) => {
    if (token) {
      console.log(
        `Worker ${process.pid} — uWebSockets.js server listening on port 8000`,
      );
    } else {
      console.error(
        `Worker ${process.pid} failed to start server on port 8000`,
      );
      process.exit(1);
    }
  });
}
