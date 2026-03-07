local pgmoon = require("pgmoon")
local cjson = require("cjson")

-- Parse DATABASE_URL: postgresql://user:pass@host:port/db
local function parse_db_url(url)
    local user, pass, host, port, db =
        url:match("postgresql://([^:]+):([^@]+)@([^:]+):(%d+)/(.+)")
    return {
        host = host or "db",
        port = tonumber(port) or 5432,
        database = db or "ordersdb",
        user = user or "apiuser",
        password = pass or "apipassword",
    }
end

local db_config = parse_db_url(os.getenv("DATABASE_URL") or "")

local function new_pg()
    local pg = pgmoon.new({
        host = db_config.host,
        port = db_config.port,
        database = db_config.database,
        user = db_config.user,
        password = db_config.password,
        pool_size = 120,
    })
    local ok, err = pg:connect()
    if not ok then
        return nil, err
    end
    return pg
end

local M = {}

function M.hello()
    ngx.header["Content-Type"] = "application/json"
    ngx.say(cjson.encode({ message = "Hello, World!" }))
end

function M.orders()
    local pg, err = new_pg()
    if not pg then
        ngx.status = 500
        ngx.say(cjson.encode({ error = err }))
        return
    end

    local res, query_err = pg:query(
        "SELECT id, customer_id, total_cents, status, created_at " ..
        "FROM orders LIMIT 100 OFFSET 1000"
    )
    pg:keepalive(0, 120)

    if not res then
        ngx.status = 500
        ngx.say(cjson.encode({ error = query_err }))
        return
    end

    -- Convert timestamps to ISO strings
    for _, row in ipairs(res) do
        if type(row.created_at) == "table" then
            row.created_at = tostring(row.created_at)
        end
    end

    ngx.header["Content-Type"] = "application/json"
    ngx.say(cjson.encode(res))
end

return M
