<?php
declare(strict_types=1);

use Swoole\Http\Request;
use Swoole\Http\Response;
use Swoole\WebSocket\Frame;
use Swoole\WebSocket\Server;

// Parse DATABASE_URL into PDO DSN
function buildDsn(): array {
    $url = getenv('DATABASE_URL') ?: 'postgresql://apiuser:apipassword@db:5432/ordersdb';
    $parts = parse_url($url);
    $host = $parts['host'] ?? 'db';
    $port = $parts['port'] ?? 5432;
    $db   = ltrim($parts['path'] ?? '/ordersdb', '/');
    $user = $parts['user'] ?? 'apiuser';
    $pass = $parts['pass'] ?? 'apipassword';
    return ["pgsql:host={$host};port={$port};dbname={$db}", $user, $pass];
}

$workerNum = swoole_cpu_num() * 2;
// Cap total DB connections at 80 to stay under PostgreSQL's max_connections (100)
$poolSize  = max(1, (int)floor(80 / $workerNum));
define('POOL_SIZE', $poolSize);
define('HELLO', '{"message":"Hello, World!"}');

$pool = new Swoole\Coroutine\Channel(POOL_SIZE);
$connections = [];

$server = new Server('0.0.0.0', 8000, SWOOLE_BASE);

$server->set([
    'worker_num'       => $workerNum,
    'enable_coroutine' => true,
    'log_level'        => SWOOLE_LOG_ERROR,
]);

$server->on('WorkerStart', function () use ($pool): void {
    [$dsn, $user, $pass] = buildDsn();
    for ($i = 0; $i < POOL_SIZE; $i++) {
        $pool->push(new PDO($dsn, $user, $pass, [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]));
    }
});

$server->on('open', function (Server $server, Request $request) use (&$connections): void {
    $connections[$request->fd] = $request->server['request_uri'] ?? '/';
});

$server->on('message', function (Server $server, Frame $frame) use ($pool, &$connections): void {
    $path = $connections[$frame->fd] ?? '';
    if ($path === '/ws/echo') {
        $server->push($frame->fd, $frame->data);
        return;
    }
    if ($path === '/ws/orders') {
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
        $server->push($frame->fd, json_encode($rows));
    }
});

$server->on('close', function (Server $server, int $fd) use (&$connections): void {
    unset($connections[$fd]);
});

$server->on('request', function (Request $req, Response $res) use ($pool): void {
    $path = $req->server['request_uri'] ?? '/';

    if ($path === '/') {
        $res->header('Content-Type', 'application/json');
        $res->end(HELLO);
        return;
    }

    if ($path === '/orders') {
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

echo "PHP Laravel (Swoole WS) server starting on :8000\n";
$server->start();
