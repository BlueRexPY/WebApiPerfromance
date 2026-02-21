import "reflect-metadata";
import cluster from "cluster";
import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";

const NUM_WORKERS = parseInt(process.env.WORKERS || "2", 10);

async function bootstrap() {
  const app = await NestFactory.create(AppModule, {
    logger: false,
  });
  await app.listen(8000, "0.0.0.0");
  console.log(
    `Worker ${process.pid} — NestJS Express/Bun server at http://0.0.0.0:8000`,
  );
}

if (cluster.isPrimary) {
  console.log(
    `Primary ${process.pid} is running — forking ${NUM_WORKERS} workers`,
  );

  for (let i = 0; i < NUM_WORKERS; i++) {
    cluster.fork();
  }

  cluster.on("exit", (worker, code, signal) => {
    console.log(
      `Worker ${worker.process.pid} died (${signal || code}) — restarting`,
    );
    cluster.fork();
  });
} else {
  bootstrap();
}
