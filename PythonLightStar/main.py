import datetime
import os
from dataclasses import dataclass
from typing import Sequence

from dotenv import load_dotenv
from litestar import Litestar, get
from psycopg import AsyncConnection, sql
from psycopg.rows import class_row
from psycopg_pool import AsyncConnectionPool

load_dotenv()


def get_database_connection_string() -> str:
    url: str | None = os.getenv("DATABASE_URL")

    if url is None:
        raise ValueError("DATABASE_URL environment variable is not set")

    return url


# Global connection pool
pool: AsyncConnectionPool | None = None


@dataclass
class HelloResponse:
    message: str = "Hello, World!"


@dataclass
class Order:
    id: int
    customer_id: int
    total_cents: int
    status: str
    created_at: datetime.datetime


ORDERS_SQL = sql.SQL(
    """
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT %(limit)s
    OFFSET %(offset)s
    """
)


@get("/")
async def hello() -> HelloResponse:
    return HelloResponse()


@get("/orders")
async def get_orders() -> Sequence[Order]:
    if pool is None:
        raise RuntimeError("Database pool not initialized")

    async with pool.connection() as conn:
        async with conn.cursor(row_factory=class_row(Order)) as cursor:
            await cursor.execute(
                ORDERS_SQL, {"limit": 100, "offset": 1000}, prepare=True
            )
            return await cursor.fetchall()


async def on_startup() -> None:
    global pool
    # Per-worker pool: 90 total / 14 workers ≈ 6-7 connections per worker
    # But we'll use a smaller pool per worker and let workers share
    pool = AsyncConnectionPool(
        conninfo=get_database_connection_string(),
        min_size=5,
        max_size=10,  # 10 connections per worker max
        timeout=30,
        max_waiting=0,  # Don't queue, fail fast
    )
    await pool.wait()


async def on_shutdown() -> None:
    global pool
    if pool is not None:
        await pool.close()


app = Litestar(
    route_handlers=[hello, get_orders],
    on_startup=[on_startup],
    on_shutdown=[on_shutdown],
)
