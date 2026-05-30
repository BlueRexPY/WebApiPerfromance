import cluster from "cluster";
import express from "express";
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

  const app = express();

  app.disable("x-powered-by");
  app.disable("etag");

  app.get("/", (req, res) => {
    res.json({ message: "Hello, World!" });
  });

  app.get("/orders", async (req, res) => {
    try {
      const orders = await sql`
        SELECT id, customer_id, total_cents, status, created_at
        FROM orders
        LIMIT 100
        OFFSET 1000
      `;
      res.json(orders);
    } catch (error) {
      console.error("Database error:", error);
      res.status(500).json({ error: "Internal server error" });
    }
  });

  const PORT = process.env.PORT || 8000;
  const server = app.listen(PORT, "0.0.0.0", () => {
    console.log(
      `Worker ${process.pid} — Express/Bun server at http://0.0.0.0:${PORT}`,
    );
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
    server.close(() => process.exit(0));
  });
}
