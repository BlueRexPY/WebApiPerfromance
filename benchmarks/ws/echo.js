/**
 * k6 WebSocket Echo benchmark
 *
 * Measures round-trip latency and message throughput for the /ws/echo endpoint.
 * Analogous to the HTTP hello_world test.
 *
 * Usage:
 *   k6 run --vus 120 --duration 20s \
 *       -e WS_URL=ws://127.0.0.1:8001/ws/echo \
 *       benchmarks/ws/echo.js
 */

import ws from "k6/ws";
import { check } from "k6";
import { Trend, Counter } from "k6/metrics";

const roundTripTime = new Trend("ws_echo_rtt_ms");
const messagesSent = new Counter("ws_echo_messages_sent");
const messagesReceived = new Counter("ws_echo_messages_received");

const WS_URL = __ENV.WS_URL || "ws://127.0.0.1:8001/ws/echo";
const MESSAGE = JSON.stringify({ message: "Hello, World!" });

export const options = {
  vus: 120,
  duration: "20s",
  thresholds: {
    ws_echo_rtt_ms: ["p(95)<100"],
  },
};

export default function () {
  const res = ws.connect(WS_URL, {}, (socket) => {
    socket.on("open", () => {
      const sendTime = Date.now();
      socket.send(MESSAGE);
      messagesSent.add(1);

      socket.on("message", () => {
        roundTripTime.add(Date.now() - sendTime);
        messagesReceived.add(1);
        socket.close();
      });
    });

    socket.on("error", (e) => {
      console.error("WS error:", e.error());
    });
  });

  check(res, { "ws connected (101)": (r) => r && r.status === 101 });
}
