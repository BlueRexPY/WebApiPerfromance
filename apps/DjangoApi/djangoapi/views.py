from django.db import connection
from rest_framework.decorators import api_view
from rest_framework.response import Response


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
