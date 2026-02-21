import { Injectable, OnModuleInit, OnModuleDestroy } from "@nestjs/common";
import { Pool, PoolClient } from "pg";

const NUM_WORKERS = parseInt(process.env.WORKERS || "2", 10);

@Injectable()
export class DatabaseService implements OnModuleInit, OnModuleDestroy {
  private pool!: Pool;

  onModuleInit() {
    this.pool = new Pool({
      connectionString:
        process.env.DATABASE_URL ||
        "postgresql://apiuser:apipassword@localhost:5432/ordersdb",
      max: Math.ceil(120 / NUM_WORKERS),
      idleTimeoutMillis: 20000,
      connectionTimeoutMillis: 10000,
    });
  }

  async onModuleDestroy() {
    await this.pool.end();
  }

  async query<T = Record<string, unknown>>(
    sql: string,
    values?: unknown[],
  ): Promise<T[]> {
    const client: PoolClient = await this.pool.connect();
    try {
      const res = await client.query(sql, values);
      return res.rows as T[];
    } finally {
      client.release();
    }
  }
}
