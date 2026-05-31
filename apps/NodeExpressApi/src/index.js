import express from "express";
import postgres from "postgres";
import { WebSocketServer } from "ws";
import * as grpc from "@grpc/grpc-js";
import * as protoLoader from "@grpc/proto-loader";
import path from "path";

const DATABASE_URL =
  process.env.DATABASE_URL ||
  "postgresql://apiuser:apipassword@localhost:5432/ordersdb";

// Create PostgreSQL connection with pooling
const sql = postgres(DATABASE_URL, {
  max: 120,
  idle_timeout: 20,
  connect_timeout: 10,
  prepare: true,
});

const getOrdersQuery = sql`
  SELECT id, customer_id, total_cents, status, created_at
  FROM orders
  LIMIT 100
  OFFSET 1000
`;

const app = express();

// Disable unnecessary middleware for performance
app.disable("x-powered-by");
app.disable("etag");

// GET /
app.get("/", (req, res) => {
  res.json({ message: "Hello, World!" });
});

// GET /orders
app.get("/orders", async (req, res) => {
  try {
    const orders = await getOrdersQuery;

    res.json(orders);
  } catch (error) {
    console.error("Database error:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});

// GET /sse/hello
app.get("/sse/hello", (req, res) => {
  res.setHeader("Content-Type", "text/event-stream");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("X-Accel-Buffering", "no");
  res.write('data: {"message":"Hello, World!"}\n\n');
  res.end();
});

// GET /sse/orders
app.get("/sse/orders", async (req, res) => {
  try {
    const orders = await sql`
      SELECT id, customer_id, total_cents, status, created_at
      FROM orders
      LIMIT 100
      OFFSET 1000
    `;
    res.setHeader("Content-Type", "text/event-stream");
    res.setHeader("Cache-Control", "no-cache");
    res.setHeader("X-Accel-Buffering", "no");
    for (const order of orders) {
      res.write(`data: ${JSON.stringify(order)}\n\n`);
    }
    res.end();
  } catch (error) {
    console.error("Database error:", error);
    res.status(500).end();
  }
});

// Start server
const PORT = process.env.PORT || 8000;
const server = app.listen(PORT, "0.0.0.0", () => {
  console.log(`🚀 Express server running at http://0.0.0.0:${PORT}`);
});

// WebSocket
const echoWss = new WebSocketServer({ noServer: true });
const ordersWss = new WebSocketServer({ noServer: true });

echoWss.on("connection", (ws) => {
  ws.on("message", (data, isBinary) => ws.send(data, { binary: isBinary }));
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

// gRPC server on port 9000
const PROTO_PATH =
  process.env.PROTO_PATH ??
  path.join(import.meta.dirname, "..", "proto", "api.proto");

const packageDef = protoLoader.loadSync(PROTO_PATH, {
  keepCase: true,
  longs: String,
  enums: String,
  defaults: true,
  oneofs: true,
});
const proto = grpc.loadPackageDefinition(packageDef);

const grpcServer = new grpc.Server();
grpcServer.addService(proto.api.ApiService.service, {
  sayHello: (_call, callback) => {
    callback(null, { message: "Hello, World!" });
  },
  getOrders: async (_call, callback) => {
    try {
      const orders = await sql`
        SELECT id, customer_id, total_cents, status, created_at
        FROM orders
        LIMIT 100
        OFFSET 1000
      `;
      callback(null, {
        orders: orders.map((o) => ({
          id: o.id,
          customer_id: o.customer_id,
          total_cents: o.total_cents,
          status: o.status,
          created_at: new Date(o.created_at).toISOString(),
        })),
      });
    } catch (err) {
      callback({ code: grpc.status.INTERNAL, message: "Internal error" });
    }
  },
});

const GRPC_PORT = process.env.GRPC_PORT || 9000;
grpcServer.bindAsync(
  `0.0.0.0:${GRPC_PORT}`,
  grpc.ServerCredentials.createInsecure(),
  (err, port) => {
    if (err) {
      console.error("gRPC bind error:", err);
      return;
    }
    console.log(`gRPC server listening on port ${port}`);
  },
);

// Graceful shutdown
process.on("SIGINT", async () => {
  console.log("\n🛑 Shutting down gracefully...");
  grpcServer.tryShutdown(() => {});
  await sql.end();
  server.close(() => {
    console.log("Server closed");
    process.exit(0);
  });
});
