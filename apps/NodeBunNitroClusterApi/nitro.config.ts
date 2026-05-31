import { defineNitroConfig } from "nitropack/config";

export default defineNitroConfig({
  preset: "node-cluster",
  experimental: {
    websocket: true,
  },
});
