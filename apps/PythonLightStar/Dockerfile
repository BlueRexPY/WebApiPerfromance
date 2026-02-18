FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000


# Maximum performance tuning:
# - workers: 4 (matches CPU cores typically available)
# - blocking-threads: 1 (minimize overhead)
# - backlog: 4096 (increased from 2048)
# - http: 1 (HTTP/1 only, faster than auto-negotiation)
# - http1-buffer-size: 32768 (32KB, increased from default 8KB)
# - websockets: disabled (not needed)
CMD ["granian", \
    "--interface", "asgi", \
    "--host", "0.0.0.0", \
    "--port", "8000", \
    "--workers", "4", \
    "--blocking-threads", "1", \
    "--http", "1", \
    "--http1-buffer-size", "32768", \
    "--backlog", "4096", \
    "--loop", "uvloop", \
    "--no-access-log", \
    "--respawn-failed-workers", \
    "main:app"]
