import "reflect-metadata";
import { NestFactory } from "@nestjs/core";
import {
  FastifyAdapter,
  NestFastifyApplication,
} from "@nestjs/platform-fastify";
import { AppModule } from "./app.module";
import { WebSocketServer } from "ws";
import { Pool } from "pg";

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

const dbPool = new Pool({ connectionString: DATABASE_URL, max: 20 });

async function bootstrap() {
  const app = await NestFactory.create<NestFastifyApplication>(
    AppModule,
    new FastifyAdapter({ logger: false }),
    { logger: false },
  );
  await app.listen(8000, "0.0.0.0");

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

bootstrap();
