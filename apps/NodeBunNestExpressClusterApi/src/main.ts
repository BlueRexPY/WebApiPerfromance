import "reflect-metadata";
import cluster from "cluster";
import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";
import { WebSocketServer } from "ws";
import { Pool } from "pg";

const NUM_WORKERS = parseInt(process.env.WORKERS || "2", 10);

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

async function bootstrap() {
  const dbPool = new Pool({
    connectionString: DATABASE_URL,
    max: Math.ceil(20 / NUM_WORKERS),
  });

  const app = await NestFactory.create(AppModule, { logger: false });
  await app.listen(8000, "0.0.0.0");
  console.log(
    `Worker ${process.pid} — NestJS Express/Bun server at http://0.0.0.0:8000`,
  );

  const echoWss = new WebSocketServer({ noServer: true });
  const ordersWss = new WebSocketServer({ noServer: true });

  echoWss.on("connection", (ws) => {
    ws.on("message", (data) => ws.send(data));
  });

  ordersWss.on("connection", (ws) => {
    ws.on("message", async () => {
      const { rows } = await dbPool.query(
        "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000",
      );
      ws.send(JSON.stringify(rows));
    });
  });

  app.getHttpServer().on("upgrade", (req: any, socket: any, head: any) => {
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
}

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
  bootstrap();
}
