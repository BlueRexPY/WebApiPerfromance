import os
import threading

from django.db import connection
from pymongo import MongoClient
from rest_framework.decorators import api_view
from rest_framework.response import Response

_mongo_lock = threading.Lock()
_mongo_client: MongoClient | None = None


def _get_mongo_client() -> MongoClient:
    global _mongo_client
    if _mongo_client is None:
        with _mongo_lock:
            if _mongo_client is None:
                url = os.environ.get("MONGO_URL", "mongodb://mongodb:27017")
                _mongo_client = MongoClient(url, maxPoolSize=120)
    return _mongo_client


@api_view(["GET"])
def hello(request):
    return Response({"message": "Hello, World!"})


@api_view(["GET"])
def orders(request):
    with connection.cursor() as cursor:
        cursor.execute(
            """
            SELECT id, customer_id, total_cents, status, created_at
            FROM orders
            LIMIT 100 OFFSET 1000
        """
        )

        columns = [col[0] for col in cursor.description]
        results = [dict(zip(columns, row)) for row in cursor.fetchall()]

    return Response(results)


@api_view(["GET"])
def mongodb_orders(request):
    client = _get_mongo_client()
    db = client["ordersdb"]
    docs = list(db["orders"].find({}, {"_id": 0}, skip=1000, limit=100))
    return Response(docs)
