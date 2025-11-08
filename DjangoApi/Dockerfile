FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "4", "--worker-class", "sync", "--threads", "4", "--max-requests", "1000", "--max-requests-jitter", "100", "--timeout", "30", "--access-logfile", "-", "--error-logfile", "-", "--log-level", "error", "djangoapi.wsgi:application"]
