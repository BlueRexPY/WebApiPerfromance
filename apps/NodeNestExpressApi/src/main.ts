import "reflect-metadata";
import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";
import { WebSocketServer } from "ws";
import { Pool } from "pg";

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

async function bootstrap() {
  const dbPool = new Pool({
    connectionString: DATABASE_URL,
    max: 20,
    idleTimeoutMillis: 20000,
    connectionTimeoutMillis: 10000,
  });

  const echoWss = new WebSocketServer({ noServer: true });
  const ordersWss = new WebSocketServer({ noServer: true });

  echoWss.on("connection", (ws) => {
    ws.on("message", (data, isBinary) => ws.send(data, { binary: isBinary }));
  });

  ordersWss.on("connection", (ws) => {
    ws.on("message", async () => {
      const result = await dbPool.query(
        "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
        [100, 1000],
      );
      ws.send(JSON.stringify(result.rows));
    });
  });

  const app = await NestFactory.create(AppModule, {
    logger: false,
  });
  await app.listen(8000, "0.0.0.0");

  const httpServer = app.getHttpServer();
  httpServer.on("upgrade", (req: any, socket: any, head: any) => {
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

bootstrap();
