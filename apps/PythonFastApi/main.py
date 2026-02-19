import datetime
import os
from contextlib import asynccontextmanager
from dataclasses import dataclass
from typing import Any, Sequence

from dotenv import load_dotenv
from fastapi import FastAPI
from motor.motor_asyncio import AsyncIOMotorClient
from psycopg import sql
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

pool: AsyncConnectionPool | None = None
mongo_client: AsyncIOMotorClient | None = None


@asynccontextmanager
async def lifespan(app: FastAPI):
    global pool, mongo_client
    pool = AsyncConnectionPool(
        conninfo=get_database_connection_string(),
        min_size=10,
        max_size=120,
    )
    mongo_url = os.getenv("MONGO_URL", "mongodb://mongodb:27017")
    mongo_client = AsyncIOMotorClient(mongo_url, maxPoolSize=120)
    yield
    await pool.close()
    mongo_client.close()


app = FastAPI(lifespan=lifespan, openapi_url=None, docs_url=None, redoc_url=None)


@app.get("/")
async def hello() -> HelloResponse:
    return HelloResponse()


@app.get("/postgresql/orders")
async def get_orders() -> Sequence[Order]:
    async with pool.connection() as conn:
        async with conn.cursor(row_factory=class_row(Order)) as cursor:
            await cursor.execute(
                ORDERS_SQL, {"limit": 100, "offset": 1000}, prepare=True
            )
            return await cursor.fetchall()


@app.get("/mongodb/orders")
async def get_mongo_orders() -> list[Any]:
    db = mongo_client["ordersdb"]
    cursor = db["orders"].find({}, {"_id": 0}, skip=1000, limit=100)
    return await cursor.to_list(length=100)
