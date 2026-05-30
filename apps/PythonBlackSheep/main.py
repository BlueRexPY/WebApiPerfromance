import datetime
import json as json_module
import os

from blacksheep import Application, WebSocket, json
from dotenv import load_dotenv
from psycopg_pool import AsyncConnectionPool

load_dotenv()


def get_database_connection_string() -> str:
    url: str | None = os.getenv("DATABASE_URL")
    if url is None:
        raise ValueError("DATABASE_URL environment variable is not set")
    return url


ORDERS_SQL = """
    SELECT id, customer_id, total_cents, status, created_at
    FROM orders
    LIMIT %(limit)s
    OFFSET %(offset)s
"""

pool: AsyncConnectionPool | None = None

app = Application(show_error_details=False)


@app.on_start
async def startup(application: Application) -> None:
    global pool
    pool = AsyncConnectionPool(
        conninfo=get_database_connection_string(),
        min_size=10,
        max_size=120,
    )


@app.on_stop
async def cleanup(application: Application) -> None:
    if pool is not None:
        await pool.close()


@app.router.get("/")
async def hello():
    return json({"message": "Hello, World!"})


@app.router.get("/orders")
async def get_orders():
    async with pool.connection() as conn:
        async with conn.cursor() as cursor:
            await cursor.execute(ORDERS_SQL, {"limit": 100, "offset": 1000})
            rows = await cursor.fetchall()
            orders = [
                {
                    "id": row[0],
                    "customer_id": row[1],
                    "total_cents": row[2],
                    "status": row[3],
                    "created_at": (
                        row[4].isoformat()
                        if isinstance(row[4], datetime.datetime)
                        else row[4]
                    ),
                }
                for row in rows
            ]
    return json(orders)


@app.router.ws("/ws/echo")
async def ws_echo(websocket: WebSocket) -> None:
    await websocket.accept()
    try:
        while True:
            data = await websocket.receive_text()
            await websocket.send_text(data)
    except Exception:
        pass


@app.router.ws("/ws/orders")
async def ws_orders(websocket: WebSocket) -> None:
    await websocket.accept()
    try:
        while True:
            await websocket.receive_text()
            async with pool.connection() as conn:
                async with conn.cursor() as cursor:
                    await cursor.execute(ORDERS_SQL, {"limit": 100, "offset": 1000})
                    rows = await cursor.fetchall()
            orders = [
                {
                    "id": row[0],
                    "customer_id": row[1],
                    "total_cents": row[2],
                    "status": row[3],
                    "created_at": (
                        row[4].isoformat()
                        if isinstance(row[4], datetime.datetime)
                        else row[4]
                    ),
                }
                for row in rows
            ]
            await websocket.send_text(json_module.dumps(orders))
    except Exception:
        pass
