/**
 * k6 gRPC Hello benchmark
 *
 * Measures unary RPC round-trip latency for the SayHello method.
 * Analogous to the HTTP hello_world test.
 *
 * Usage:
 *   k6 run --vus 120 --duration 20s \
 *       -e GRPC_URL=127.0.0.1:9001 \
 *       -e PROTO_ROOT=/path/to/benchmarks/proto \
 *       benchmarks/grpc/hello.js
 */

import grpc from "k6/net/grpc";
import { check } from "k6";
import { Trend, Counter } from "k6/metrics";

const roundTripTime = new Trend("grpc_hello_rtt_ms");
const totalCalls = new Counter("grpc_hello_calls");

const GRPC_URL = __ENV.GRPC_URL || "127.0.0.1:9001";
const PROTO_ROOT = __ENV.PROTO_ROOT || "benchmarks/proto";

export const options = {
  vus: 120,
  duration: "20s",
  thresholds: {
    grpc_hello_rtt_ms: ["p(95)<50"],
  },
};

const client = new grpc.Client();
client.load([PROTO_ROOT], "api.proto");

export default function () {
  client.connect(GRPC_URL, { plaintext: true });

  const start = performance.now();
  const response = client.invoke("api.ApiService/SayHello", {});
  roundTripTime.add(performance.now() - start);
  totalCalls.add(1);

  check(response, {
    "status OK": (r) => r && r.status === grpc.StatusOK,
    "message correct": (r) =>
      r && r.message && r.message.message === "Hello, World!",
  });
}

export function teardown() {
  client.close();
}
