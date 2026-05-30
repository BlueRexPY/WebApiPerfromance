import { Elysia } from "elysia";
import postgres from "postgres";

const NUM_WORKERS = parseInt(process.env.WORKERS || "2", 10);
const IS_WORKER = process.env.IS_WORKER === "true";

interface Order {
  id: number;
  customer_id: number;
  total_cents: number;
  status: string;
  created_at: Date;
}

if (!IS_WORKER) {
  // Primary: spawn N worker processes
  console.log(
    `Primary ${process.pid} is running — spawning ${NUM_WORKERS} workers`,
  );

  const workers: ReturnType<typeof Bun.spawn>[] = [];

  for (let i = 0; i < NUM_WORKERS; i++) {
    const w = Bun.spawn(["bun", "run", "src/index.ts"], {
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
          new Promise<false>((res) => setTimeout(() => res(false), 100)),
        ]);
        if (exited) {
          console.log(`Worker ${i} exited — restarting`);
          workers[i] = Bun.spawn(["bun", "run", "src/index.ts"], {
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
  // Worker: start Elysia server sharing the port via SO_REUSEPORT
  const DATABASE_URL =
    process.env.DATABASE_URL ||
    "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

  const sql = postgres(DATABASE_URL, {
    max: Math.ceil(120 / NUM_WORKERS),
    idle_timeout: 20,
    connect_timeout: 10,
    prepare: true,
  });

  const getOrdersQuery = sql<Order[]>`
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT 100
    OFFSET 1000
  `;

  const app = new Elysia()
    .get("/", () => ({ message: "Hello, World!" }))
    .get("/orders", async () => {
      return await getOrdersQuery;
    })
    .ws("/ws/echo", {
      message(ws, message) {
        ws.send(message);
      },
    })
    .ws("/ws/orders", {
      async message(ws) {
        const orders = await sql`
          SELECT id, customer_id, total_cents, status, created_at
          FROM orders
          LIMIT 100
          OFFSET 1000
        `;
        ws.send(JSON.stringify(orders));
      },
    })
    .listen({ port: 8000, hostname: "0.0.0.0", reusePort: true });

  console.log(
    `Worker ${process.pid} — Elysia/Bun server at http://0.0.0.0:${app.server?.port}`,
  );

  process.on("SIGINT", async () => {
    await sql.end();
    await app.stop();
    process.exit(0);
  });
}
