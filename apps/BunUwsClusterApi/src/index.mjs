import uWS from "uWebSockets.js";
import pg from "pg";

const { Pool } = pg;

const NUM_WORKERS = parseInt(process.env.WORKERS || "2", 10);
const IS_WORKER = process.env.IS_WORKER === "true";

if (!IS_WORKER) {
  // Primary: spawn N worker processes using Bun.spawn
  console.log(
    `Primary ${process.pid} is running — spawning ${NUM_WORKERS} workers`,
  );

  const workers = [];

  for (let i = 0; i < NUM_WORKERS; i++) {
    const w = Bun.spawn(["bun", "run", "src/index.mjs"], {
      env: { ...process.env, IS_WORKER: "true" },
      stdout: "inherit",
      stderr: "inherit",
    });
    workers.push(w);
  }

  // Respawn dead workers
  const watchWorkers = async () => {
    while (true) {
      for (let i = 0; i < workers.length; i++) {
        const w = workers[i];
        const exited = await Promise.race([
          w.exited.then(() => true),
          new Promise((res) => setTimeout(() => res(false), 100)),
        ]);
        if (exited) {
          console.log(`Worker ${i} exited — restarting`);
          workers[i] = Bun.spawn(["bun", "run", "src/index.mjs"], {
            env: { ...process.env, IS_WORKER: "true" },
            stdout: "inherit",
            stderr: "inherit",
          });
        }
      }
      await Bun.sleep(500);
    }
  };

  watchWorkers();

  process.on("SIGINT", () => {
    console.log("\nShutting down workers...");
    for (const w of workers) w.kill();
    process.exit(0);
  });
} else {
  // Worker: start uWS server (Linux SO_REUSEPORT allows multiple workers on port 8000)
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
        `Worker ${process.pid} — uWebSockets.js/Bun server listening on port 8000`,
      );
    } else {
      console.error(
        `Worker ${process.pid} failed to start server on port 8000`,
      );
      process.exit(1);
    }
  });
}
