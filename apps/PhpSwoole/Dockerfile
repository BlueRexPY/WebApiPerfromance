FROM php:8.3-cli-alpine

RUN apk add --no-cache \
    postgresql-dev \
    linux-headers \
    brotli-dev \
    $PHPIZE_DEPS

# Install Swoole and PDO PostgreSQL
RUN pecl install swoole && \
    docker-php-ext-enable swoole && \
    docker-php-ext-install pdo pdo_pgsql

RUN apk del $PHPIZE_DEPS linux-headers

WORKDIR /app

COPY server.php .

EXPOSE 8000

CMD ["php", "server.php"]
