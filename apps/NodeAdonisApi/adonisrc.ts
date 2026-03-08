import { defineConfig } from "@adonisjs/core/app";

export default defineConfig({
  typescript: true,
  preloads: [() => import("#start/routes")],
  providers: [() => import("@adonisjs/core/providers/app_provider")],
});
