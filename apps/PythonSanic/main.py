import datetime
import json
import os
import threading
from concurrent import futures
from dataclasses import dataclass
from typing import Sequence

import grpc
from dotenv import load_dotenv
from psycopg import sql
from psycopg.rows import class_row
from psycopg_pool import AsyncConnectionPool
from sanic import Sanic
from sanic.response import json as json_response

from api_pb2 import (
    GetOrdersReply,
    GetOrdersRequest,
    HelloReply,
    HelloRequest,
    Order as PbOrder,
)
from api_pb2_grpc import ApiServiceServicer, add_ApiServiceServicer_to_server

load_dotenv()

app = Sanic("PythonSanic")

DATABASE_URL = os.getenv("DATABASE_URL", "")
if not DATABASE_URL:
    raise ValueError("DATABASE_URL environment variable is not set")

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
    "SELECT id, customer_id, total_cents, status, created_at "
    "FROM orders LIMIT %(limit)s OFFSET %(offset)s"
)

pool: AsyncConnectionPool | None = None

@app.listener("before_server_start")
async def setup_pool(app, loop):
    global pool
    pool = AsyncConnectionPool(
        conninfo=DATABASE_URL,
        min_size=10,
        max_size=120,
    )

@app.listener("after_server_stop")
async def close_pool(app, loop):
    global pool
    if pool:
        await pool.close()

@app.get("/")
async def hello(request):
    return json_response({"message": "Hello, World!"})

@app.get("/orders")
async def get_orders(request):
    global pool
    async with pool.connection() as conn:
        async with conn.cursor(row_factory=class_row(Order)) as cursor:
            await cursor.execute(
                ORDERS_SQL, {"limit": 100, "offset": 1000}, prepare=True
            )
            rows = await cursor.fetchall()
    return json_response(
        [
            {
                "id": r.id,
                "customer_id": r.customer_id,
                "total_cents": r.total_cents,
                "status": r.status,
                "created_at": r.created_at.isoformat(),
            }
            for r in rows
        ]
    )


# ── gRPC Server ──────────────────────────────────────────────────────────

class ApiService(ApiServiceServicer):
    async def SayHello(self, request, context):
        return HelloReply(message="Hello, World!")

    async def GetOrders(self, request, context):
        global pool
        async with pool.connection() as conn:
            async with conn.cursor() as cursor:
                await cursor.execute(
                    "SELECT id, customer_id, total_cents, status, created_at "
                    "FROM orders LIMIT %s OFFSET %s",
                    (100, 1000),
                )
                rows = await cursor.fetchall()
        orders = [
            PbOrder(
                id=r[0],
                customer_id=r[1],
                total_cents=r[2],
                status=r[3],
                created_at=r[4].isoformat() if isinstance(r[4], datetime.datetime) else str(r[4]),
            )
            for r in rows
        ]
        return GetOrdersReply(orders=orders)


def serve_grpc():
    server = grpc.aio.server(futures.ThreadPoolExecutor(max_workers=40))
    add_ApiServiceServicer_to_server(ApiService(), server)
    server.add_insecure_port("[::]:9000")
    # Run in the same asyncio event loop
    import asyncio
    loop = asyncio.new_event_loop()
    asyncio.set_event_loop(loop)
    loop.run_until_complete(server.start())
    loop.run_until_complete(server.wait_for_termination())


if __name__ == "__main__":
    threading.Thread(target=serve_grpc, daemon=True).start()
    app.run(host="0.0.0.0", port=8000, workers=4, access_log=False)
