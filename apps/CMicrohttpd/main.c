#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <pthread.h>
#include <microhttpd.h>
#include <libpq-fe.h>

#define PORT          8000
#define POOL_SIZE     120
#define THREAD_POOL   8
#define ORDERS_BUF    (256 * 1024)  /* 256 KB initial buffer for /orders JSON */

/* ── Connection pool ──────────────────────────────────────────────────────── */

static PGconn          *g_conns[POOL_SIZE];
static int              g_free[POOL_SIZE];
static pthread_mutex_t  g_mu  = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t   g_cv  = PTHREAD_COND_INITIALIZER;
static char             g_conninfo[512];

static void pool_init(void)
{
    for (int i = 0; i < POOL_SIZE; i++) {
        g_conns[i] = PQconnectdb(g_conninfo);
        if (PQstatus(g_conns[i]) != CONNECTION_OK) {
            fprintf(stderr, "DB connect %d failed: %s\n",
                    i, PQerrorMessage(g_conns[i]));
            exit(1);
        }
        g_free[i] = 1;
    }
}

static PGconn *pool_acquire(void)
{
    pthread_mutex_lock(&g_mu);
    for (;;) {
        for (int i = 0; i < POOL_SIZE; i++) {
            if (g_free[i]) {
                g_free[i] = 0;
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
        if (g_conns[i] == c) {
            g_free[i] = 1;
            break;
        }
    }
    pthread_cond_signal(&g_cv);
    pthread_mutex_unlock(&g_mu);
}

/* ── JSON helpers ─────────────────────────────────────────────────────────── */

/* Escape a string for JSON (only handles printable ASCII safely) */
static size_t json_escape(char *dst, size_t cap, const char *src)
{
    size_t n = 0;
    for (; *src && n + 2 < cap; src++) {
        unsigned char c = (unsigned char)*src;
        if (c == '"' || c == '\\') {
            if (n + 3 >= cap) break;
            dst[n++] = '\\';
            dst[n++] = c;
        } else {
            dst[n++] = c;
        }
    }
    dst[n] = '\0';
    return n;
}

/* ── Route: GET / ─────────────────────────────────────────────────────────── */

static enum MHD_Result handle_hello(struct MHD_Connection *conn)
{
    const char body[] = "{\"message\":\"Hello, World!\"}";
    struct MHD_Response *resp = MHD_create_response_from_buffer(
        sizeof(body) - 1, (void *)body, MHD_RESPMEM_MUST_COPY);
    MHD_add_response_header(resp, "Content-Type", "application/json");
    enum MHD_Result r = MHD_queue_response(conn, MHD_HTTP_OK, resp);
    MHD_destroy_response(resp);
    return r;
}

/* ── Route: GET /orders ───────────────────────────────────────────────────── */

static enum MHD_Result handle_orders(struct MHD_Connection *conn)
{
    static const char sql[] =
        "SELECT id, customer_id, total_cents, status, created_at "
        "FROM orders LIMIT 100 OFFSET 1000";

    PGconn *db = pool_acquire();

    /* Auto-reconnect if connection dropped */
    if (PQstatus(db) != CONNECTION_OK)
        PQreset(db);

    PGresult *res = PQexec(db, sql);
    pool_release(db);

    if (PQresultStatus(res) != PGRES_TUPLES_OK) {
        fprintf(stderr, "Query error: %s\n", PQresultErrorMessage(res));
        PQclear(res);
        const char err[] = "{\"error\":\"query failed\"}";
        struct MHD_Response *resp = MHD_create_response_from_buffer(
            sizeof(err) - 1, (void *)err, MHD_RESPMEM_MUST_COPY);
        MHD_add_response_header(resp, "Content-Type", "application/json");
        enum MHD_Result r = MHD_queue_response(conn, MHD_HTTP_INTERNAL_SERVER_ERROR, resp);
        MHD_destroy_response(resp);
        return r;
    }

    int rows = PQntuples(res);

    /* Allocate output buffer; each row ~160 bytes worst-case */
    size_t cap = 16 + (size_t)rows * 180;
    char *buf  = malloc(cap);
    if (!buf) { PQclear(res); return MHD_NO; }

    size_t pos = 0;
    buf[pos++] = '[';

    char esc[256];
    for (int i = 0; i < rows; i++) {
        if (i > 0) buf[pos++] = ',';

        const char *id         = PQgetvalue(res, i, 0);
        const char *cust_id    = PQgetvalue(res, i, 1);
        const char *total      = PQgetvalue(res, i, 2);
        const char *status_raw = PQgetvalue(res, i, 3);
        const char *created    = PQgetvalue(res, i, 4);

        json_escape(esc, sizeof(esc), status_raw);

        pos += (size_t)snprintf(buf + pos, cap - pos,
            "{\"id\":%s,\"customer_id\":%s,\"total_cents\":%s,"
            "\"status\":\"%s\",\"created_at\":\"%s\"}",
            id, cust_id, total, esc, created);
    }

    buf[pos++] = ']';
    PQclear(res);

    struct MHD_Response *resp = MHD_create_response_from_buffer(
        pos, buf, MHD_RESPMEM_MUST_FREE);
    MHD_add_response_header(resp, "Content-Type", "application/json");
    enum MHD_Result r = MHD_queue_response(conn, MHD_HTTP_OK, resp);
    MHD_destroy_response(resp);
    return r;
}

/* ── Request dispatcher ───────────────────────────────────────────────────── */

static enum MHD_Result request_handler(
    void *cls,
    struct MHD_Connection *connection,
    const char *url,
    const char *method,
    const char *version,
    const char *upload_data,
    size_t *upload_data_size,
    void **con_cls)
{
    (void)cls; (void)version; (void)upload_data; (void)upload_data_size;

    /* Two-pass: first call just registers the connection */
    if (*con_cls == NULL) {
        *con_cls = (void *)1;
        return MHD_YES;
    }

    if (strcmp(method, "GET") != 0)
        return MHD_NO;

    if (strcmp(url, "/") == 0)
        return handle_hello(connection);

    if (strcmp(url, "/orders") == 0)
        return handle_orders(connection);

    const char not_found[] = "{\"error\":\"not found\"}";
    struct MHD_Response *resp = MHD_create_response_from_buffer(
        sizeof(not_found) - 1, (void *)not_found, MHD_RESPMEM_MUST_COPY);
    MHD_add_response_header(resp, "Content-Type", "application/json");
    enum MHD_Result r = MHD_queue_response(connection, MHD_HTTP_NOT_FOUND, resp);
    MHD_destroy_response(resp);
    return r;
}

/* ── DATABASE_URL parser ──────────────────────────────────────────────────── */
/* Accepts:  postgresql://user:pass@host:port/db
   Produces: host=... port=... dbname=... user=... password=...  */

static void parse_db_url(const char *url)
{
    char user[128]   = "apiuser";
    char pass[128]   = "apipassword";
    char host[128]   = "postgres";
    char port[16]    = "5432";
    char dbname[128] = "ordersdb";

    const char *p = url;
    if      (strncmp(p, "postgresql://", 13) == 0) p += 13;
    else if (strncmp(p, "postgres://",   11) == 0) p += 11;
    else {
        /* Assume it's already a keyword=value connstring */
        snprintf(g_conninfo, sizeof(g_conninfo), "%s", url);
        return;
    }

    const char *at = strchr(p, '@');
    if (at) {
        size_t uplen = (size_t)(at - p);
        char userpass[256];
        if (uplen >= sizeof(userpass)) uplen = sizeof(userpass) - 1;
        memcpy(userpass, p, uplen);
        userpass[uplen] = '\0';
        char *colon = strchr(userpass, ':');
        if (colon) {
            *colon = '\0';
            snprintf(user, sizeof(user), "%s", userpass);
            snprintf(pass, sizeof(pass), "%s", colon + 1);
        } else {
            snprintf(user, sizeof(user), "%s", userpass);
        }
        p = at + 1;
    }

    const char *slash = strchr(p, '/');
    if (slash) {
        size_t hplen = (size_t)(slash - p);
        char hostport[256];
        if (hplen >= sizeof(hostport)) hplen = sizeof(hostport) - 1;
        memcpy(hostport, p, hplen);
        hostport[hplen] = '\0';
        char *colon = strchr(hostport, ':');
        if (colon) {
            *colon = '\0';
            snprintf(host, sizeof(host), "%s", hostport);
            snprintf(port, sizeof(port), "%s", colon + 1);
        } else {
            snprintf(host, sizeof(host), "%s", hostport);
        }
        snprintf(dbname, sizeof(dbname), "%s", slash + 1);
    }

    snprintf(g_conninfo, sizeof(g_conninfo),
        "host=%s port=%s dbname=%s user=%s password=%s",
        host, port, dbname, user, pass);
}

/* ── main ─────────────────────────────────────────────────────────────────── */

int main(void)
{
    const char *db_url = getenv("DATABASE_URL");
    if (!db_url)
        db_url = "postgresql://apiuser:apipassword@postgres:5432/ordersdb";

    parse_db_url(db_url);
    fprintf(stderr, "DB: %s\n", g_conninfo);

    pool_init();
    fprintf(stderr, "Pool ready (%d connections)\n", POOL_SIZE);

    struct MHD_Daemon *daemon = MHD_start_daemon(
        MHD_USE_INTERNAL_POLLING_THREAD | MHD_USE_ERROR_LOG,
        PORT,
        NULL, NULL,
        &request_handler, NULL,
        MHD_OPTION_THREAD_POOL_SIZE, (unsigned int)THREAD_POOL,
        MHD_OPTION_END);

    if (!daemon) {
        fprintf(stderr, "Failed to start HTTP server\n");
        return 1;
    }

    fprintf(stderr, "Listening on :%d\n", PORT);

    /* Block until SIGINT/SIGTERM */
    sigset_t ss;
    sigemptyset(&ss);
    sigaddset(&ss, SIGINT);
    sigaddset(&ss, SIGTERM);
    pthread_sigmask(SIG_BLOCK, &ss, NULL);
    int sig = 0;
    sigwait(&ss, &sig);

    MHD_stop_daemon(daemon);
    return 0;
}
