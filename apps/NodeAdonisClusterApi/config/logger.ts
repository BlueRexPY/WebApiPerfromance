import { defineConfig } from "@adonisjs/core/logger";

export default defineConfig({
  default: "app",
  loggers: {
    app: {
      enabled: true,
      name: "benchmark",
      level: "error",
      transport: {
        targets: [{ target: "pino/file", options: { destination: 1 } }],
      },
    },
  },
});
