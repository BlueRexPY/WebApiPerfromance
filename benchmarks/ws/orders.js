/**
 * k6 WebSocket Orders benchmark
 *
 * Sends a trigger message and measures how fast the server pushes back
 * 100 serialised order rows. Analogous to the HTTP orders test.
 *
 * Usage:
 *   k6 run --vus 120 --duration 20s \
 *       -e WS_URL=ws://127.0.0.1:8001/ws/orders \
 *       benchmarks/ws/orders.js
 */

import ws from "k6/ws";
import { check } from "k6";
import { Trend, Counter } from "k6/metrics";

const orderRtt = new Trend("ws_orders_rtt_ms");
const requestsSent = new Counter("ws_orders_requests_sent");
const responsesReceived = new Counter("ws_orders_responses_received");

const WS_URL = __ENV.WS_URL || "ws://127.0.0.1:8001/ws/orders";
const TRIGGER = JSON.stringify({ fetch: "orders" });

export const options = {
  vus: 120,
  duration: "20s",
  thresholds: {
    ws_orders_rtt_ms: ["p(95)<500"],
  },
};

export default function () {
  const res = ws.connect(WS_URL, {}, (socket) => {
    socket.on("open", () => {
      const sendTime = Date.now();
      socket.send(TRIGGER);
      requestsSent.add(1);

      socket.on("message", (data) => {
        orderRtt.add(Date.now() - sendTime);
        responsesReceived.add(1);

        const orders = JSON.parse(data);
        check(orders, {
          "received 100 orders": (o) => Array.isArray(o) && o.length === 100,
        });

        socket.close();
      });
    });

    socket.on("error", (e) => {
      console.error("WS error:", e.error());
    });
  });

  check(res, { "ws connected (101)": (r) => r && r.status === 101 });
}
