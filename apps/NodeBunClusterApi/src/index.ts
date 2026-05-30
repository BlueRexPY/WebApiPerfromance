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

interface HelloResponse {
  message: string;
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
  // Worker: start HTTP server sharing the port via SO_REUSEPORT
  const DATABASE_URL =
    process.env.DATABASE_URL ||
    "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

  const sql = postgres(DATABASE_URL, {
    max: Math.ceil(120 / NUM_WORKERS),
    idle_timeout: 20,
    connect_timeout: 10,
    prepare: true,
  });

  const getOrdersQuery = () => sql<Order[]>`
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT 100
    OFFSET 1000
  `;

  const server = Bun.serve<{ type: "echo" | "orders" }>({
    port: 8000,
    hostname: "0.0.0.0",
    reusePort: true,
    async fetch(req, server) {
      const url = new URL(req.url);

      if (url.pathname === "/ws/echo") {
        if (server.upgrade(req, { data: { type: "echo" } }))
          return undefined as any;
        return new Response("WebSocket upgrade failed", { status: 400 });
      }

      if (url.pathname === "/ws/orders") {
        if (server.upgrade(req, { data: { type: "orders" } }))
          return undefined as any;
        return new Response("WebSocket upgrade failed", { status: 400 });
      }

      if (url.pathname === "/") {
        const response: HelloResponse = { message: "Hello, World!" };
        return new Response(JSON.stringify(response), {
          headers: { "Content-Type": "application/json" },
        });
      }

      if (url.pathname === "/orders") {
        try {
          const orders = await getOrdersQuery();
          return new Response(JSON.stringify(orders), {
            headers: { "Content-Type": "application/json" },
          });
        } catch (error) {
          console.error("Database error:", error);
          return new Response(
            JSON.stringify({ error: "Internal server error" }),
            {
              status: 500,
              headers: { "Content-Type": "application/json" },
            },
          );
        }
      }

      return new Response("Not Found", { status: 404 });
    },
    websocket: {
      message(ws, message) {
        if (ws.data.type === "echo") {
          ws.send(message);
        } else if (ws.data.type === "orders") {
          getOrdersQuery().then((orders) => {
            ws.send(JSON.stringify(orders));
          });
        }
      },
    },
  });

  console.log(
    `Worker ${process.pid} — Bun server at http://${server.hostname}:${server.port}`,
  );

  process.on("SIGINT", async () => {
    await sql.end();
    process.exit(0);
  });
}
