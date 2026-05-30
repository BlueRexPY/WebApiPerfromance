import datetime
import json
import os
from contextlib import asynccontextmanager
from dataclasses import dataclass
from typing import Sequence

from dotenv import load_dotenv
from fastapi import FastAPI, WebSocket
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


ORDERS_SQL = sql.SQL("""
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT %(limit)s
    OFFSET %(offset)s
    """)

pool: AsyncConnectionPool | None = None


@asynccontextmanager
async def lifespan(app: FastAPI):
    global pool
    pool = AsyncConnectionPool(
        conninfo=get_database_connection_string(),
        min_size=10,
        max_size=120,
    )
    yield
    await pool.close()


app = FastAPI(lifespan=lifespan, openapi_url=None, docs_url=None, redoc_url=None)


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


@app.websocket("/ws/echo")
async def ws_echo(websocket: WebSocket) -> None:
    await websocket.accept()
    try:
        while True:
            data = await websocket.receive_text()
            await websocket.send_text(data)
    except Exception:
        pass


@app.websocket("/ws/orders")
async def ws_orders(websocket: WebSocket) -> None:
    await websocket.accept()
    try:
        while True:
            await websocket.receive_text()
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
            await websocket.send_text(json.dumps(orders))
    except Exception:
        pass
