/**
 * k6 gRPC Orders benchmark
 *
 * Measures unary RPC round-trip latency for the GetOrders method.
 * Analogous to the HTTP orders test.
 *
 * Usage:
 *   k6 run --vus 120 --duration 20s \
 *       -e GRPC_URL=127.0.0.1:9001 \
 *       -e PROTO_ROOT=/path/to/benchmarks/proto \
 *       benchmarks/grpc/orders.js
 */

import grpc from "k6/net/grpc";
import { check } from "k6";
import { Trend, Counter } from "k6/metrics";

const roundTripTime = new Trend("grpc_orders_rtt_ms");
const totalCalls = new Counter("grpc_orders_calls");

const GRPC_URL = __ENV.GRPC_URL || "127.0.0.1:9001";
const PROTO_ROOT = __ENV.PROTO_ROOT || "benchmarks/proto";

export const options = {
  vus: 120,
  duration: "20s",
  thresholds: {
    grpc_orders_rtt_ms: ["p(95)<500"],
  },
};

const client = new grpc.Client();
client.load([PROTO_ROOT], "api.proto");

export default function () {
  client.connect(GRPC_URL, { plaintext: true });

  const start = performance.now();
  const response = client.invoke("api.ApiService/GetOrders", {});
  roundTripTime.add(performance.now() - start);
  totalCalls.add(1);

  check(response, {
    "status OK": (r) => r && r.status === grpc.StatusOK,
    "received 100 orders": (r) =>
      r &&
      r.message &&
      Array.isArray(r.message.orders) &&
      r.message.orders.length === 100,
  });
}

export function teardown() {
  client.close();
}
