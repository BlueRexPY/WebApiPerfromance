import cluster from "cluster";
import { Hono } from "hono";
import { serve } from "@hono/node-server";
import postgres from "postgres";
import { WebSocketServer } from "ws";

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

  const sql = postgres(DATABASE_URL, {
    max: Math.ceil(120 / NUM_WORKERS),
    idle_timeout: 20,
    connect_timeout: 10,
    prepare: true,
  });

  const app = new Hono();

  app.get("/", (c) => c.json({ message: "Hello, World!" }));

  app.get("/orders", async (c) => {
    const orders = await sql`
      SELECT id, customer_id, total_cents, status, created_at
      FROM orders
      LIMIT 100
      OFFSET 1000
    `;
    return c.json(orders);
  });

  // WebSocket
  const echoWss = new WebSocketServer({ noServer: true });
  const ordersWss = new WebSocketServer({ noServer: true });

  echoWss.on("connection", (ws) => {
    ws.on("message", (data) => ws.send(data));
  });

  ordersWss.on("connection", (ws) => {
    ws.on("message", async () => {
      const orders = await sql`
        SELECT id, customer_id, total_cents, status, created_at
        FROM orders
        LIMIT 100
        OFFSET 1000
      `;
      ws.send(JSON.stringify(orders));
    });
  });

  const server = serve(
    {
      fetch: app.fetch,
      port: 8000,
      hostname: "0.0.0.0",
    },
    () => {
      console.log(`Worker ${process.pid} — Hono server at http://0.0.0.0:8000`);
    },
  );

  server.on("upgrade", (req, socket, head) => {
    if (req.url === "/ws/echo") {
      echoWss.handleUpgrade(req, socket, head, (ws) =>
        echoWss.emit("connection", ws, req),
      );
    } else if (req.url === "/ws/orders") {
      ordersWss.handleUpgrade(req, socket, head, (ws) =>
        ordersWss.emit("connection", ws, req),
      );
    } else {
      socket.destroy();
    }
  });

  process.on("SIGINT", async () => {
    await sql.end();
    process.exit(0);
  });
}
