import datetime
import os
from typing import Any, Sequence

import msgspec
from dotenv import load_dotenv
from litestar import Litestar, Response, get
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


pool: AsyncConnectionPool | None = None
mongo_client: AsyncIOMotorClient | None = None


class HelloResponse(msgspec.Struct):
    message: str = "Hello, World!"


class Order(msgspec.Struct):
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
async def hello() -> Response[dict[str, str]]:
    return Response({"message": "Hello, World!"})


@get("/postgresql/orders")
async def get_orders() -> Sequence[Order]:
    if pool is None:
        raise RuntimeError("Database pool not initialized")

    async with pool.connection() as conn:
        async with conn.cursor(row_factory=class_row(Order)) as cursor:
            await cursor.execute(
                ORDERS_SQL, {"limit": 100, "offset": 1000}, prepare=True
            )
            return await cursor.fetchall()


@get("/mongodb/orders")
async def get_mongo_orders() -> list[Any]:
    if mongo_client is None:
        raise RuntimeError("MongoDB client not initialized")
    cursor = mongo_client["ordersdb"]["orders"].find(
        {}, {"_id": 0}, skip=1000, limit=100
    )
    return await cursor.to_list(length=100)


async def on_startup() -> None:
    global pool, mongo_client
    pool = AsyncConnectionPool(
        conninfo=get_database_connection_string(),
        min_size=10,
        max_size=120,
        timeout=5,
        max_idle=300,
        max_lifetime=3600,
    )
    mongo_url = os.getenv("MONGO_URL", "mongodb://mongodb:27017")
    mongo_client = AsyncIOMotorClient(mongo_url, maxPoolSize=120)


async def on_shutdown() -> None:
    global pool, mongo_client
    if pool is not None:
        await pool.close()
    if mongo_client is not None:
        mongo_client.close()


app = Litestar(
    route_handlers=[hello, get_orders, get_mongo_orders],
    on_startup=[on_startup],
    on_shutdown=[on_shutdown],
    debug=False,
    openapi_config=None,
    compression_config=None,
)
