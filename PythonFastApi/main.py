import datetime
import os
from contextlib import asynccontextmanager
from dataclasses import dataclass
from typing import Sequence

from dotenv import load_dotenv
from fastapi import FastAPI
from psycopg import AsyncConnection, sql
from psycopg.rows import class_row
from psycopg_pool import AsyncConnectionPool

load_dotenv()


def get_database_connection_string() -> str:
    url: str | None = os.getenv("DATABASE_URL")

    if url is None:
        raise ValueError("DATABASE_URL environment variable is not set")

    return url


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

# Global connection pool
pool: AsyncConnectionPool | None = None


@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    global pool
    pool = AsyncConnectionPool(
        conninfo=get_database_connection_string(),
        max_size=90,
        open=True,
    )
    yield
    # Shutdown
    await pool.close()


app = FastAPI(lifespan=lifespan)


@app.get("/")
async def hello() -> HelloResponse:
    return HelloResponse()


@app.get("/orders")
async def get_orders() -> Sequence[Order]:
    async with pool.connection() as conn:
        async with conn.cursor(row_factory=class_row(Order)) as cursor:
            await cursor.execute(
                ORDERS_SQL, {"limit": 100, "offset": 1000}, prepare=True
            )
            return await cursor.fetchall()
