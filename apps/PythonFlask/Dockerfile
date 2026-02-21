FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["gunicorn", "main:app", \
    "--bind", "0.0.0.0:8000", \
    "--workers", "4", \
    "--worker-class", "sync", \
    "--backlog", "2048", \
    "--access-logfile", "-", \
    "--error-logfile", "-"]
