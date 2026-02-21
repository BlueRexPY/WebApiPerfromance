import { Controller, Get } from "@nestjs/common";
import { DatabaseService } from "./database.service";

interface HelloResponse {
  message: string;
}

interface Order {
  id: number;
  customer_id: number;
  total_cents: number;
  status: string;
  created_at: string;
}

@Controller()
export class AppController {
  constructor(private readonly db: DatabaseService) {}

  @Get("/")
  getHello(): HelloResponse {
    return { message: "Hello, World!" };
  }

  @Get("/orders")
  async getOrders(): Promise<Order[]> {
    return this.db.query<Order>(
      "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
      [100, 1000],
    );
  }
}
