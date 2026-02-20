const std = @import("std");
const zap = @import("zap");

const c = @cImport({
    @cInclude("libpq-fe.h");
});

const POOL_SIZE = 120;
const QUERY_ORDERS = "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000";

// Use libc allocator — it is thread-safe (backed by libc malloc/free)
const allocator = std.heap.c_allocator;

// Simple connection pool backed by a fixed-size array + mutex
var pool_conns: [POOL_SIZE]*c.PGconn = undefined;
var pool_mutex = std.Thread.Mutex{};
var pool_available: [POOL_SIZE]bool = undefined;
var conn_string: [*:0]const u8 = undefined;

fn initPool() !void {
    for (0..POOL_SIZE) |i| {
        pool_conns[i] = c.PQconnectdb(conn_string) orelse return error.ConnFailed;
        if (c.PQstatus(pool_conns[i]) != c.CONNECTION_OK) return error.ConnFailed;
        pool_available[i] = true;
    }
}

fn acquireConn() usize {
    while (true) {
        pool_mutex.lock();
        for (0..POOL_SIZE) |i| {
            if (pool_available[i]) {
                pool_available[i] = false;
                pool_mutex.unlock();
                return i;
            }
        }
        pool_mutex.unlock();
        std.time.sleep(100 * std.time.ns_per_us); // 100µs back-off
    }
}

fn releaseConn(idx: usize) void {
    pool_mutex.lock();
    defer pool_mutex.unlock();
    pool_available[idx] = true;
}

fn onHello(r: zap.Request) void {
    r.setContentType(.JSON) catch return;
    r.sendBody("{\"message\":\"Hello, World!\"}") catch return;
}

fn onOrders(r: zap.Request) void {
    const idx = acquireConn();
    defer releaseConn(idx);

    const conn = pool_conns[idx];
    const res = c.PQexec(conn, QUERY_ORDERS);
    defer c.PQclear(res);

    if (c.PQresultStatus(res) != c.PGRES_TUPLES_OK) {
        r.setStatus(.internal_server_error);
        r.sendBody("{}") catch {};
        return;
    }

    const nrows = c.PQntuples(res);
    var buf = std.ArrayList(u8).init(allocator);
    defer buf.deinit();

    buf.appendSlice("[") catch return;
    var i: c_int = 0;
    while (i < nrows) : (i += 1) {
        if (i > 0) buf.appendSlice(",") catch return;
        const id = c.PQgetvalue(res, i, 0);
        const customer_id = c.PQgetvalue(res, i, 1);
        const total_cents = c.PQgetvalue(res, i, 2);
        const status = c.PQgetvalue(res, i, 3);
        const created_at = c.PQgetvalue(res, i, 4);

        const row = std.fmt.allocPrint(allocator, "{{\"id\":{s},\"customer_id\":{s},\"total_cents\":{s},\"status\":\"{s}\",\"created_at\":\"{s}\"}}", .{
            std.mem.span(id),
            std.mem.span(customer_id),
            std.mem.span(total_cents),
            std.mem.span(status),
            std.mem.span(created_at),
        }) catch return;
        defer allocator.free(row);
        buf.appendSlice(row) catch return;
    }
    buf.appendSlice("]") catch return;

    r.setContentType(.JSON) catch return;
    r.sendBody(buf.items) catch return;
}

pub fn main() !void {
    const db_url = std.posix.getenv("DATABASE_URL") orelse
        "postgresql://apiuser:apipassword@db:5432/ordersdb";

    // Convert DATABASE_URL to libpq conninfo keyword=value format
    // libpq accepts postgres:// URIs directly via PQconnectdb
    const conn_str = try std.fmt.allocPrintZ(allocator, "{s}", .{db_url});
    conn_string = conn_str.ptr;

    try initPool();

    var router = zap.Router.init(allocator, .{ .not_found = null });
    defer router.deinit();

    try router.handle_func_unbound("/", onHello);
    try router.handle_func_unbound("/orders", onOrders);

    var listener = zap.HttpListener.init(.{
        .port = 8000,
        .on_request = router.on_request_handler(),
        .log = false,
        .max_clients = 100000,
    });
    try listener.listen();

    std.debug.print("Zig zap server listening on :8000\n", .{});
    zap.start(.{
        .threads = 32,
        .workers = 1,
    });
}
