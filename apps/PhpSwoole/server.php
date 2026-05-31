<?php
declare(strict_types=1);

use Swoole\Coroutine\Channel;
use Swoole\Http\Request;
use Swoole\Http\Response;
use Swoole\WebSocket\Frame;
use Swoole\WebSocket\Server;

define('HELLO', '{"message":"Hello, World!"}');
define('ORDERS_SQL', 'SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000');

/**
 * Build a minimal uncompressed WebSocket text frame (RFC 6455).
 * Used instead of Server::push() because Swoole 6.2.1 compiled without
 * zlib support unconditionally tries to compress every push() call and
 * returns false. Raw Server::send() bypasses that path entirely.
 */
function ws_frame(string $data): string {
    $len = strlen($data);
    if ($len <= 125)   return chr(0x81) . chr($len) . $data;
    if ($len <= 65535) return chr(0x81) . chr(126) . pack('n', $len) . $data;
    return chr(0x81) . chr(127) . pack('J', $len) . $data;
}

function buildDsn(): array {
    $url   = getenv('DATABASE_URL') ?: 'postgresql://apiuser:apipassword@db:5432/ordersdb';
    $parts = parse_url($url);
    $host  = $parts['host'] ?? 'db';
    $port  = $parts['port'] ?? 5432;
    $db    = ltrim($parts['path'] ?? '/ordersdb', '/');
    $user  = $parts['user'] ?? 'apiuser';
    $pass  = $parts['pass'] ?? 'apipassword';
    return ["pgsql:host={$host};port={$port};dbname={$db}", $user, $pass];
}

$workerNum = swoole_cpu_num();
$poolSize  = max(1, (int)floor(80 / $workerNum));

// SWOOLE_BASE: each worker accepts connections directly (SO_REUSEPORT).
// Per-worker connection path map and PDO channel are initialised in WorkerStart.
$connPaths = [];
$pdoChan   = null;

$server = new Server('0.0.0.0', 8000, SWOOLE_BASE);
$server->set([
    'worker_num'            => $workerNum,
    'enable_coroutine'      => true,
    'hook_flags'            => SWOOLE_HOOK_ALL,
    'websocket_compression' => false,
    'http_compression'      => false,
    'log_level'             => SWOOLE_LOG_ERROR,
]);

$server->on('WorkerStart', function (Server $s, int $workerId) use ($poolSize, &$pdoChan) {
    [$dsn, $user, $pass] = buildDsn();
    $pdoChan = new Channel($poolSize);
    for ($i = 0; $i < $poolSize; $i++) {
        $pdoChan->push(new PDO($dsn, $user, $pass, [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_PERSISTENT         => false,
        ]));
    }
});

$server->on('open', function (Server $s, Request $r) use (&$connPaths) {
    $connPaths[$r->fd] = $r->server['request_uri'] ?? '/ws/echo';
});

$server->on('message', function (Server $s, Frame $f) use (&$connPaths, &$pdoChan) {
    $path = $connPaths[$f->fd] ?? '/ws/echo';
    if ($path === '/ws/echo') {
        $s->send($f->fd, ws_frame($f->data));
    } elseif ($path === '/ws/orders') {
        $pdo  = $pdoChan->pop();
        $stmt = $pdo->query(ORDERS_SQL);
        $rows = $stmt->fetchAll();
        $pdoChan->push($pdo);
        $s->send($f->fd, ws_frame(json_encode($rows)));
    }
});

$server->on('close', function (Server $s, int $fd) use (&$connPaths) {
    unset($connPaths[$fd]);
});

$server->on('request', function (Request $req, Response $res) use (&$pdoChan) {
    $path = $req->server['request_uri'] ?? '/';
    if ($path === '/') {
        $res->header('Content-Type', 'application/json');
        $res->end(HELLO);
    } elseif ($path === '/orders') {
        $pdo  = $pdoChan->pop();
        $stmt = $pdo->query(ORDERS_SQL);
        $rows = $stmt->fetchAll();
        $pdoChan->push($pdo);
        $res->header('Content-Type', 'application/json');
        $res->end(json_encode($rows));
    } else {
        $res->status(404);
        $res->end('Not Found');
    }
});

echo "PHP Swoole server starting on :8000\n";
$server->start();
