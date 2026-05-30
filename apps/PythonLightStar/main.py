import datetime
import json
import os
from typing import Sequence

import msgspec
from dotenv import load_dotenv
from litestar import Litestar, Response, get
from litestar.connection import WebSocket
from litestar.handlers.websocket_handlers import websocket
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


class HelloResponse(msgspec.Struct):
    message: str = "Hello, World!"


class Order(msgspec.Struct):
    id: int
    customer_id: int
    total_cents: int
    status: str
    created_at: datetime.datetime


ORDERS_SQL = sql.SQL("""
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT %(limit)s
    OFFSET %(offset)s
    """)


@get("/")
async def hello() -> Response[dict[str, str]]:
    return Response({"message": "Hello, World!"})


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


@websocket("/ws/echo")
async def ws_echo(socket: WebSocket) -> None:
    await socket.accept()
    try:
        while True:
            data = await socket.receive_data(mode="text")
            await socket.send_data(data)
    except Exception:
        pass


@websocket("/ws/orders")
async def ws_orders(socket: WebSocket) -> None:
    await socket.accept()
    try:
        while True:
            await socket.receive_data(mode="text")
            if pool is None:
                break
            async with pool.connection() as conn:
                async with conn.cursor() as cursor:
                    await cursor.execute(
                        "SELECT id, customer_id, total_cents, status, created_at "
                        "FROM orders LIMIT %s OFFSET %s",
                        (100, 1000),
                    )
                    rows = await cursor.fetchall()
            orders = [
                {
                    "id": r[0],
                    "customer_id": r[1],
                    "total_cents": r[2],
                    "status": r[3],
                    "created_at": (
                        r[4].isoformat()
                        if isinstance(r[4], datetime.datetime)
                        else r[4]
                    ),
                }
                for r in rows
            ]
            await socket.send_data(json.dumps(orders))
    except Exception:
        pass


async def on_startup() -> None:
    global pool
    pool = AsyncConnectionPool(
        conninfo=get_database_connection_string(),
        min_size=10,
        max_size=120,
        timeout=5,
        max_idle=300,
        max_lifetime=3600,
    )


async def on_shutdown() -> None:
    global pool
    if pool is not None:
        await pool.close()


app = Litestar(
    route_handlers=[hello, get_orders, ws_echo, ws_orders],
    on_startup=[on_startup],
    on_shutdown=[on_shutdown],
    debug=False,
    openapi_config=None,
    compression_config=None,
)
