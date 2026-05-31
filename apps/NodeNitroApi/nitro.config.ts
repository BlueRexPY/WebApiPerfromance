import { defineNitroConfig } from "nitropack/config";

export default defineNitroConfig({
  preset: "node-server",
  experimental: {
    websocket: true,
  },
});
