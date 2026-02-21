FROM php:8.3-cli-alpine

RUN apk add --no-cache \
    postgresql-dev \
    linux-headers \
    $PHPIZE_DEPS \
    libzip-dev \
    zip \
    unzip \
    git \
    curl

# Build Swoole from source so we can explicitly disable brotli (PECL hardcodes
# --enable-brotli=yes which fails the pkg-config libbrotlienc lookup on Alpine).
RUN curl -sL https://github.com/swoole/swoole-src/archive/refs/tags/v6.0.1.tar.gz \
    | tar -xz -C /tmp && \
    cd /tmp/swoole-src-6.0.1 && \
    phpize && \
    ./configure \
    --enable-brotli=no \
    --enable-sockets=no \
    --enable-openssl=no \
    --enable-mysqlnd=no \
    --enable-swoole-curl=no \
    --enable-cares=no && \
    make -j"$(nproc)" install && \
    docker-php-ext-enable swoole && \
    rm -rf /tmp/swoole-src-6.0.1 && \
    docker-php-ext-install pdo pdo_pgsql zip opcache pcntl && \
    apk del $PHPIZE_DEPS linux-headers curl

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /app

# Bootstrap a minimal Laravel 11 project (production deps only)
RUN composer create-project --prefer-dist laravel/laravel . "^11.0" \
    --no-dev --no-interaction --quiet

# Install Laravel Octane (Swoole driver)
RUN composer require laravel/octane "^2.0" --update-no-dev --no-interaction --quiet

# Publish the Octane config with Swoole as the default server
RUN php artisan octane:install --server=swoole --no-interaction

# Override routes, bootstrap, and DB config with benchmark versions
COPY routes/web.php routes/web.php
COPY bootstrap/app.php bootstrap/app.php
COPY config/database.php config/database.php

# Generate APP_KEY and warm up view cache (no config/route cache — reads env at runtime)
RUN php artisan key:generate --force --quiet && \
    php artisan view:cache --quiet

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
