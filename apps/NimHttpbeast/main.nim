import httpbeast, asyncdispatch, options, strutils, os
import db_connector/db_postgres

const HELLO_BODY = "{\"message\":\"Hello, World!\"}"
const JSON_CT   = "Content-Type: application/json\c\l"

# Thread-local DB connection — each httpbeast worker thread gets its own
var threadConn {.threadvar.}: DbConn

proc getConn(): DbConn =
  if threadConn == nil:
    let url = getEnv("DATABASE_URL", "postgresql://apiuser:apipassword@db:5432/ordersdb")
    # Parse a postgres:// URI into individual components
    var host = "db"
    var port_str = "5432"
    var user = "apiuser"
    var pass = "apipassword"
    var dbn  = "ordersdb"
    # crude URI parse: postgresql://user:pass@host:port/db
    try:
      let noProto = url.split("://")[1]
      let atIdx = noProto.rfind('@')
      let userinfo = noProto[0 ..< atIdx]
      let hostpart = noProto[atIdx + 1 .. ^1]
      let colonUser = userinfo.find(':')
      if colonUser >= 0:
        user = userinfo[0 ..< colonUser]
        pass = userinfo[colonUser + 1 .. ^1]
      let slashIdx = hostpart.find('/')
      let hostport = if slashIdx >= 0: hostpart[0 ..< slashIdx] else: hostpart
      if slashIdx >= 0:
        dbn = hostpart[slashIdx + 1 .. ^1]
      let colonHost = hostport.rfind(':')
      if colonHost >= 0:
        host = hostport[0 ..< colonHost]
        port_str = hostport[colonHost + 1 .. ^1]
      else:
        host = hostport
    except:
      discard
    threadConn = open(host & ":" & port_str, user, pass, dbn)
  result = threadConn

proc onRequest(req: Request) {.async.} =
  if req.httpMethod.isNone or req.path.isNone:
    req.send(Http400)
    return

  case req.path.get
  of "/":
    req.send(Http200, HELLO_BODY, JSON_CT)

  of "/orders":
    let conn = getConn()
    var rows: seq[Row]
    try:
      rows = conn.getAllRows(sql"""
        SELECT id, customer_id, total_cents, status, created_at
        FROM orders LIMIT 100 OFFSET 1000""")
    except:
      req.send(Http500)
      return

    var body = newStringOfCap(rows.len * 120 + 2)
    body.add('[')
    for i, row in rows:
      if i > 0: body.add(',')
      body.add("{\"id\":")
      body.add(row[0])
      body.add(",\"customer_id\":")
      body.add(row[1])
      body.add(",\"total_cents\":")
      body.add(row[2])
      body.add(",\"status\":\"")
      body.add(row[3])
      body.add("\",\"created_at\":\"")
      body.add(row[4])
      body.add("\"}")
    body.add(']')
    req.send(Http200, body, JSON_CT)

  else:
    req.send(Http404)

run(onRequest, Settings(port: Port(8000), numThreads: 4))
