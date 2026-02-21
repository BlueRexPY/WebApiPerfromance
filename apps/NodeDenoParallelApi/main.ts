/**
 * Deno Parallel HTTP Server — Primary process
 *
 * Spawns WORKERS Deno Worker threads, each running its own Deno.serve()
 * instance bound to port 8000 with SO_REUSEPORT so the OS distributes
 * incoming connections across all workers.
 */
const NUM_WORKERS = parseInt(Deno.env.get("WORKERS") ?? "2", 10);

console.log(`Primary ${Deno.pid} — spawning ${NUM_WORKERS} workers`);

const workerUrl = new URL("./worker.ts", import.meta.url);

for (let i = 0; i < NUM_WORKERS; i++) {
  const worker = new Worker(workerUrl, {
    type: "module",
    // @ts-ignore — Deno-specific extension to pass permissions to workers
    deno: { permissions: "inherit" },
  });

  worker.onerror = (err) => {
    console.error(`Worker ${i} error:`, err.message);
  };
}

// Keep the primary alive; workers block on Deno.serve()
await new Promise<never>(() => {});
