import os
from datetime import datetime

from dotenv import load_dotenv
from flask import Flask, jsonify
from psycopg2 import pool

load_dotenv()

DATABASE_URL: str = os.environ.get(
    "DATABASE_URL", "postgresql://apiuser:apipassword@localhost:5432/ordersdb"
)

db_pool = pool.ThreadedConnectionPool(
    minconn=10,
    maxconn=120,
    dsn=DATABASE_URL,
)

app = Flask(__name__)


@app.route("/")
def hello():
    return jsonify({"message": "Hello, World!"})


@app.route("/orders")
def orders():
    conn = db_pool.getconn()
    try:
        with conn.cursor() as cur:
            cur.execute(
                "SELECT id, customer_id, total_cents, status, created_at "
                "FROM orders LIMIT %s OFFSET %s",
                (100, 1000),
            )
            rows = cur.fetchall()

        result = [
            {
                "id": row[0],
                "customer_id": row[1],
                "total_cents": row[2],
                "status": row[3],
                "created_at": (
                    row[4].isoformat() if isinstance(row[4], datetime) else row[4]
                ),
            }
            for row in rows
        ]
        return jsonify(result)
    finally:
        db_pool.putconn(conn)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
