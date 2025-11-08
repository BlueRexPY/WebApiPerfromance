import datetime
import os
from dataclasses import dataclass
from typing import Sequence

from dotenv import load_dotenv
from litestar import Litestar, get
from litestar_psycopg import AsyncConnectionPoolConfig, PsycopgConfig, PsycopgPlugin
from psycopg import AsyncConnection, sql
from psycopg.rows import class_row

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

psycopg = PsycopgPlugin(
    config=PsycopgConfig(
        pool_config=AsyncConnectionPoolConfig(
            max_size=90,
            conninfo=get_database_connection_string(),
        )
    )
)


@get("/")
async def hello() -> HelloResponse:
    return HelloResponse()


@get("/orders")
async def get_orders(
    db_connection: AsyncConnection,
) -> Sequence[Order]:

    async with db_connection.cursor(row_factory=class_row(Order)) as cursor:
        await cursor.execute(ORDERS_SQL, {"limit": 100, "offset": 1000}, prepare=True)

        return await cursor.fetchall()


app = Litestar(
    route_handlers=[hello, get_orders],
    plugins=[psycopg],
)
