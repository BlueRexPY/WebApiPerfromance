#!/bin/sh
set -e

# Parse DATABASE_URL → individual Laravel DB_* env vars used by config/database.php
# The config/database.php file reads DATABASE_URL directly via parse_url(), so this
# entrypoint simply passes through and starts Octane.
exec php artisan octane:start \
    --server=swoole \
    --host=0.0.0.0 \
    --port=8000 \
    --workers=4 \
    --task-workers=2 \
    --max-requests=500 \
    --no-interaction
