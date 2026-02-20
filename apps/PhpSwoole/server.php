<?php
declare(strict_types=1);

use Swoole\Http\Request;
use Swoole\Http\Response;
use Swoole\Http\Server;

// Parse DATABASE_URL into PDO DSN
function buildDsn(): array {
    $url = getenv('DATABASE_URL') ?: 'postgresql://apiuser:apipassword@db:5432/ordersdb';
    $parts = parse_url($url);
    $host  = $parts['host'] ?? 'db';
    $port  = $parts['port'] ?? 5432;
    $db    = ltrim($parts['path'] ?? '/ordersdb', '/');
    $user  = $parts['user'] ?? 'apiuser';
    $pass  = $parts['pass'] ?? 'apipassword';
    return [
        "pgsql:host={$host};port={$port};dbname={$db}",
        $user,
        $pass,
    ];
}

const POOL_SIZE = 30;
const HELLO     = '{"message":"Hello, World!"}';

// Swoole coroutine-aware PDO connection pool using a Channel
$pool = new Swoole\Coroutine\Channel(POOL_SIZE);

$server = new Server('0.0.0.0', 8000, SWOOLE_BASE);

$server->set([
    'worker_num'            => swoole_cpu_num(),
    'enable_coroutine'      => true,
    'http_compression'      => false,
    'open_http2_protocol'   => false,
    'max_coroutine'         => 100000,
    'log_level'             => SWOOLE_LOG_ERROR,
]);

$server->on('WorkerStart', function () use ($pool): void {
    // Each worker initialises its own pool of PDO connections
    [$dsn, $user, $pass] = buildDsn();
    for ($i = 0; $i < POOL_SIZE; $i++) {
        $pdo = new PDO($dsn, $user, $pass, [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_PERSISTENT         => false,
        ]);
        $pool->push($pdo);
    }
});

$server->on('Request', function (Request $req, Response $res) use ($pool): void {
    $path = $req->server['request_uri'] ?? '/';

    if ($path === '/') {
        $res->header('Content-Type', 'application/json');
        $res->end(HELLO);
        return;
    }

    if ($path === '/orders') {
        /** @var PDO $pdo */
        $pdo = $pool->pop();
        try {
            $stmt = $pdo->query(
                'SELECT id, customer_id, total_cents, status, created_at
                 FROM orders LIMIT 100 OFFSET 1000'
            );
            $rows = $stmt->fetchAll();
        } finally {
            $pool->push($pdo);
        }
        $res->header('Content-Type', 'application/json');
        $res->end(json_encode($rows));
        return;
    }

    $res->status(404);
    $res->end('Not Found');
});

echo "PHP Swoole server starting on :8000\n";
$server->start();
