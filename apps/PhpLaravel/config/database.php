<?php

// Parse DATABASE_URL once at boot — config:cache is intentionally skipped so this
// runs at runtime inside the Octane worker, picking up the container's env var.
$dbUrl    = env('DATABASE_URL', 'postgresql://apiuser:apipassword@db:5432/ordersdb');
$parsedUrl = parse_url($dbUrl);

return [

    'default' => 'pgsql',

    'connections' => [

        'pgsql' => [
            'driver'         => 'pgsql',
            'host'           => $parsedUrl['host'] ?? 'db',
            'port'           => $parsedUrl['port'] ?? 5432,
            'database'       => ltrim($parsedUrl['path'] ?? '/ordersdb', '/'),
            'username'       => $parsedUrl['user'] ?? 'apiuser',
            'password'       => $parsedUrl['pass'] ?? 'apipassword',
            'charset'        => 'utf8',
            'prefix'         => '',
            'prefix_indexes' => true,
            'search_path'    => 'public',
            'sslmode'        => 'prefer',
            'options'        => [],
        ],

    ],

    'migrations' => [
        'table'               => 'migrations',
        'update_date_on_publish' => true,
    ],

    'redis' => [
        'client'  => 'phpredis',
        'options' => ['cluster' => env('REDIS_CLUSTER', 'redis')],
        'default' => [
            'host'     => env('REDIS_HOST', '127.0.0.1'),
            'password' => env('REDIS_PASSWORD'),
            'port'     => env('REDIS_PORT', '6379'),
            'database' => env('REDIS_DB', '0'),
        ],
        'cache' => [
            'host'     => env('REDIS_HOST', '127.0.0.1'),
            'password' => env('REDIS_PASSWORD'),
            'port'     => env('REDIS_PORT', '6379'),
            'database' => env('REDIS_CACHE_DB', '1'),
        ],
    ],

];
