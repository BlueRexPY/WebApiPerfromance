import "reflect-metadata";
import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";

async function bootstrap() {
  const app = await NestFactory.create(AppModule, {
    logger: false,
  });
  await app.listen(8000, "0.0.0.0");
}

bootstrap();
