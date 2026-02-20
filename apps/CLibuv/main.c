/* C HTTP server built directly on libuv + libpq
 *
 * Architecture
 * ────────────
 * • libuv event loop handles all TCP I/O on the main thread.
 * • Blocking PG queries are dispatched to libuv's built-in thread pool via
 *   uv_queue_work so the event loop is never stalled.
 * • A mutex-protected PG connection pool is shared among worker threads.
 *
 * Routes
 * ──────
 *   GET /        → {"message":"Hello, World!"}
 *   GET /orders  → JSON array of 100 orders (LIMIT 100 OFFSET 1000)
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <pthread.h>
#include <uv.h>
#include <libpq-fe.h>

/* ── tunables ──────────────────────────────────────────────────────────────── */
#define PORT           8000
#define POOL_SIZE      120          /* PG connections */
#define READ_BUF       4096         /* per-connection read buffer */
#define ORDERS_BUF     (512 * 1024) /* initial orders JSON buffer */

/* ── PG connection pool ────────────────────────────────────────────────────── */
static PGconn          *g_conns[POOL_SIZE];
static int              g_free_flag[POOL_SIZE];
static pthread_mutex_t  g_mu = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t   g_cv = PTHREAD_COND_INITIALIZER;
static char             g_conninfo[512];

static void pool_init(void)
{
    for (int i = 0; i < POOL_SIZE; i++) {
        g_conns[i] = PQconnectdb(g_conninfo);
        if (PQstatus(g_conns[i]) != CONNECTION_OK) {
            fprintf(stderr, "PG connect[%d] failed: %s\n",
                    i, PQerrorMessage(g_conns[i]));
            exit(1);
        }
        g_free_flag[i] = 1;
    }
}

static PGconn *pool_acquire(void)
{
    pthread_mutex_lock(&g_mu);
    for (;;) {
        for (int i = 0; i < POOL_SIZE; i++) {
            if (g_free_flag[i]) {
                g_free_flag[i] = 0;
                pthread_mutex_unlock(&g_mu);
                return g_conns[i];
            }
        }
        pthread_cond_wait(&g_cv, &g_mu);
    }
}

static void pool_release(PGconn *c)
{
    pthread_mutex_lock(&g_mu);
    for (int i = 0; i < POOL_SIZE; i++) {
        if (g_conns[i] == c) { g_free_flag[i] = 1; break; }
    }
    pthread_cond_signal(&g_cv);
    pthread_mutex_unlock(&g_mu);
}

/* ── JSON helpers ──────────────────────────────────────────────────────────── */
static void json_str(char *dst, size_t cap, const char *src, size_t *pos)
{
    if (*pos + 2 >= cap) return;
    dst[(*pos)++] = '"';
    for (; *src && *pos + 2 < cap; src++) {
        unsigned char c = (unsigned char)*src;
        if (c == '"' || c == '\\') { dst[(*pos)++] = '\\'; }
        dst[(*pos)++] = (char)c;
    }
    dst[(*pos)++] = '"';
}

/* ── request context ───────────────────────────────────────────────────────── */
typedef enum { ROUTE_HELLO, ROUTE_ORDERS, ROUTE_NOT_FOUND } route_t;

typedef struct {
    uv_tcp_t  client;   /* MUST be first – cast works both ways */
    uv_work_t work;
    route_t   route;

    char     *resp;     /* heap-allocated response buffer */
    size_t    resp_len;
} ctx_t;

/* ── worker: run blocking DB query ─────────────────────────────────────────── */
static void work_orders(uv_work_t *req)
{
    ctx_t *ctx = (ctx_t *)((char *)req - offsetof(ctx_t, work));

    PGconn *conn = pool_acquire();

    /* Ensure connection is alive */
    if (PQstatus(conn) != CONNECTION_OK) PQreset(conn);

    const char *vals[2] = { "100", "1000" };
    PGresult *res = PQexecParams(conn,
        "SELECT id, customer_id, total_cents, status, created_at "
        "FROM orders LIMIT $1 OFFSET $2",
        2, NULL, vals, NULL, NULL, 0);

    pool_release(conn);

    if (PQresultStatus(res) != PGRES_TUPLES_OK) {
        fprintf(stderr, "query error: %s\n", PQresultErrorMessage(res));
        PQclear(res);
        ctx->resp = strdup(
            "HTTP/1.1 500 Internal Server Error\r\n"
            "Content-Length: 0\r\nConnection: close\r\n\r\n");
        ctx->resp_len = strlen(ctx->resp);
        return;
    }

    int nrows = PQntuples(res);

    /* Build JSON */
    char *json = malloc(ORDERS_BUF);
    size_t pos = 0;
    json[pos++] = '[';

    for (int r = 0; r < nrows; r++) {
        if (r > 0) json[pos++] = ',';
        pos += snprintf(json + pos, ORDERS_BUF - pos,
            "{\"id\":%s,\"customer_id\":%s,\"total_cents\":%s,"
            "\"status\":",
            PQgetvalue(res, r, 0),
            PQgetvalue(res, r, 1),
            PQgetvalue(res, r, 2));
        json_str(json, ORDERS_BUF, PQgetvalue(res, r, 3), &pos);
        pos += snprintf(json + pos, ORDERS_BUF - pos,
            ",\"created_at\":");
        json_str(json, ORDERS_BUF, PQgetvalue(res, r, 4), &pos);
        if (pos + 2 < ORDERS_BUF) json[pos++] = '}';
    }
    if (pos + 2 < ORDERS_BUF) json[pos++] = ']';
    json[pos] = '\0';

    PQclear(res);

    /* Wrap in HTTP */
    char hdr[256];
    int hdr_len = snprintf(hdr, sizeof(hdr),
        "HTTP/1.1 200 OK\r\n"
        "Content-Type: application/json\r\n"
        "Content-Length: %zu\r\n"
        "Connection: close\r\n"
        "\r\n", pos);

    ctx->resp = malloc((size_t)hdr_len + pos);
    memcpy(ctx->resp, hdr, (size_t)hdr_len);
    memcpy(ctx->resp + hdr_len, json, pos);
    ctx->resp_len = (size_t)hdr_len + pos;
    free(json);
}

/* ── after-work: send response back on the event-loop thread ───────────────── */
static void on_close(uv_handle_t *handle)
{
    ctx_t *ctx = (ctx_t *)handle;
    free(ctx->resp);
    free(ctx);
}

static void write_done(uv_write_t *wr, int status)
{
    (void)status;
    uv_close((uv_handle_t *)wr->handle, on_close);
    free(wr);
}

static void send_response(ctx_t *ctx)
{
    uv_write_t *wr = malloc(sizeof(*wr));
    uv_buf_t buf = uv_buf_init(ctx->resp, (unsigned int)ctx->resp_len);
    uv_write(wr, (uv_stream_t *)&ctx->client, &buf, 1, write_done);
}

static void after_orders(uv_work_t *req, int status)
{
    (void)status;
    ctx_t *ctx = (ctx_t *)((char *)req - offsetof(ctx_t, work));
    send_response(ctx);
}

/* ── read callback ─────────────────────────────────────────────────────────── */
static void alloc_buffer(uv_handle_t *handle, size_t suggested_size, uv_buf_t *buf)
{
    (void)handle;
    (void)suggested_size;
    buf->base = malloc(READ_BUF);
    buf->len  = READ_BUF;
}

static void on_read(uv_stream_t *stream, ssize_t nread, const uv_buf_t *buf)
{
    ctx_t *ctx = (ctx_t *)stream;

    if (nread <= 0) {
        free(buf->base);
        if (nread != UV_EOF) {
            uv_close((uv_handle_t *)stream, on_close);
        } else {
            /* EOF before we parsed a request – just close */
            uv_close((uv_handle_t *)stream, on_close);
        }
        return;
    }

    /* Minimal HTTP routing: identify path from first line.
     * "GET /orders..." → ROUTE_ORDERS
     * "GET /..."       → ROUTE_HELLO  (anything else under /)
     *  anything else   → ROUTE_NOT_FOUND
     */
    route_t route = ROUTE_NOT_FOUND;
    if (nread >= 5 && memcmp(buf->base, "GET /", 5) == 0) {
        if (nread >= 11 && memcmp(buf->base + 5, "orders", 6) == 0) {
            route = ROUTE_ORDERS;
        } else {
            route = ROUTE_HELLO;
        }
    }
    free(buf->base);

    if (route == ROUTE_NOT_FOUND) {
        static const char NOT_FOUND[] =
            "HTTP/1.1 404 Not Found\r\n"
            "Content-Length: 0\r\nConnection: close\r\n\r\n";
        ctx->resp = strdup(NOT_FOUND);
        ctx->resp_len = sizeof(NOT_FOUND) - 1;
        send_response(ctx);
        return;
    }

    ctx->route = route;

    if (route == ROUTE_HELLO) {
        static const char BODY[] = "{\"message\":\"Hello, World!\"}";
        static const char HDR[] =
            "HTTP/1.1 200 OK\r\n"
            "Content-Type: application/json\r\n"
            "Content-Length: 27\r\n"
            "Connection: close\r\n"
            "\r\n";
        ctx->resp_len = sizeof(HDR) - 1 + sizeof(BODY) - 1;
        ctx->resp = malloc(ctx->resp_len);
        memcpy(ctx->resp, HDR, sizeof(HDR) - 1);
        memcpy(ctx->resp + sizeof(HDR) - 1, BODY, sizeof(BODY) - 1);
        send_response(ctx);
    } else {
        /* Dispatch DB work to thread pool */
        uv_queue_work(uv_default_loop(), &ctx->work, work_orders, after_orders);
    }
}

/* ── new connection callback ───────────────────────────────────────────────── */
static void on_connect(uv_stream_t *server, int status)
{
    if (status < 0) return;

    ctx_t *ctx = calloc(1, sizeof(*ctx));
    uv_tcp_init(uv_default_loop(), &ctx->client);

    if (uv_accept(server, (uv_stream_t *)&ctx->client) == 0) {
        uv_read_start((uv_stream_t *)&ctx->client, alloc_buffer, on_read);
    } else {
        uv_close((uv_handle_t *)&ctx->client, on_close);
    }
}

/* ── parse postgresql:// URL → libpq conninfo ──────────────────────────────── */
static void url_to_conninfo(const char *url)
{
    /* postgresql://user:pass@host:port/dbname */
    const char *p = url;
    if (strncmp(p, "postgresql://", 13) == 0) p += 13;
    else if (strncmp(p, "postgres://", 11) == 0) p += 11;

    char user[64]="", pass[128]="", host[128]="localhost", port[8]="5432", db[64]="postgres";

    const char *at = strchr(p, '@');
    if (at) {
        /* user:pass before @ */
        const char *colon = (const char *)memchr(p, ':', (size_t)(at - p));
        if (colon) {
            snprintf(user, sizeof(user), "%.*s", (int)(colon - p), p);
            snprintf(pass, sizeof(pass), "%.*s", (int)(at - colon - 1), colon + 1);
        } else {
            snprintf(user, sizeof(user), "%.*s", (int)(at - p), p);
        }
        p = at + 1;
    }

    const char *slash = strchr(p, '/');
    if (slash) {
        const char *colon = (const char *)memchr(p, ':', (size_t)(slash - p));
        if (colon) {
            snprintf(host, sizeof(host), "%.*s", (int)(colon - p), p);
            snprintf(port, sizeof(port), "%.*s", (int)(slash - colon - 1), colon + 1);
        } else {
            snprintf(host, sizeof(host), "%.*s", (int)(slash - p), p);
        }
        snprintf(db, sizeof(db), "%s", slash + 1);
    } else {
        snprintf(host, sizeof(host), "%s", p);
    }

    snprintf(g_conninfo, sizeof(g_conninfo),
             "host=%s port=%s dbname=%s user=%s password=%s",
             host, port, db, user, pass);
}

/* ── main ───────────────────────────────────────────────────────────────────── */
int main(void)
{
    const char *db_url = getenv("DATABASE_URL");
    if (!db_url) db_url = "postgresql://apiuser:apipassword@localhost:5432/ordersdb";
    url_to_conninfo(db_url);

    /* Set thread-pool size for uv_queue_work */
    uv_os_setenv("UV_THREADPOOL_SIZE", "128");

    pool_init();
    fprintf(stderr, "PG pool ready (%d connections)\n", POOL_SIZE);

    uv_loop_t *loop = uv_default_loop();
    uv_tcp_t server;
    uv_tcp_init(loop, &server);

    struct sockaddr_in addr;
    uv_ip4_addr("0.0.0.0", PORT, &addr);
    uv_tcp_bind(&server, (const struct sockaddr *)&addr, 0);

    int r = uv_listen((uv_stream_t *)&server, 4096, on_connect);
    if (r) {
        fprintf(stderr, "Listen error: %s\n", uv_strerror(r));
        return 1;
    }

    fprintf(stderr, "Listening on :%d\n", PORT);
    return uv_run(loop, UV_RUN_DEFAULT);
}
