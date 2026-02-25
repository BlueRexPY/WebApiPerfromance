      $SET NOINT
      *> GnuCOBOL HTTP API Server — prefork edition
      *> Pre-forks NUM-WORKERS processes; each connects to DB once and loops
      *> on accept().  No fork-per-request, no PQconnectdb per request.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SERVER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> ── Sockets ─────────────────────────────────────────────────────────
       01 WS-SERVER-FD       PIC S9(9) COMP-5.
       01 WS-CLIENT-FD       PIC S9(9) COMP-5.
       01 WS-RC              PIC S9(9) COMP-5.
       01 WS-OPT-ONE         PIC S9(9) COMP-5 VALUE 1.
       01 WS-PID             PIC S9(9) COMP-5.
       01 WS-FORK-I          PIC S9(9) COMP-5.
       01 WS-NUM-WORKERS     PIC S9(9) COMP-5 VALUE 16.

       *> struct sockaddr_in — 16 bytes, Linux x86-64
       *>  sin_family = AF_INET (2) as little-endian short → bytes: 02 00
       *>  sin_port   = htons(8000)                        → bytes: 1F 40
       *>  sin_addr   = INADDR_ANY (0)                     → bytes: 00 00 00 00
       01 WS-SOCKADDR.
          05 SIN-FAMILY       PIC X(2) VALUE X"0200".
          05 SIN-PORT         PIC X(2) VALUE X"1F40".
          05 SIN-ADDR         PIC X(4) VALUE X"00000000".
          05 SIN-ZERO         PIC X(8) VALUE X"0000000000000000".

       *> ── HTTP ─────────────────────────────────────────────────────────────
       01 WS-REQUEST          PIC X(4096) VALUE SPACES.
       01 WS-NREAD            PIC S9(9) COMP-5.
       01 WS-PATH             PIC X(256).
       01 WS-IDX              PIC 9(4)  COMP-5.
       01 WS-SP1              PIC 9(4)  COMP-5.
       01 WS-SP2              PIC 9(4)  COMP-5.

       *> ── Response ─────────────────────────────────────────────────────────
       01 WS-BODY             PIC X(65536) VALUE SPACES.
       01 WS-BODY-LEN         PIC 9(9) COMP-5.
       01 WS-LEN-STR          PIC Z(9).
       01 WS-HEADERS          PIC X(512).
       01 WS-HDR-LEN          PIC 9(9) COMP-5.
       01 WS-OBJ              PIC X(512).
       01 WS-OBJ-LEN          PIC 9(9) COMP-5.

       *> ── Database (persistent per-process connection) ─────────────────────
       01 WS-PG-CONN          USAGE POINTER.
       01 WS-PG-RES           USAGE POINTER.
       01 WS-PG-STATUS        PIC S9(9) COMP-5.
       01 WS-N-ROWS           PIC S9(9) COMP-5.
       01 WS-ROW              PIC S9(9) COMP-5.
       01 WS-FLD-IDX          PIC S9(9) COMP-5.
       01 WS-FIELD-PTR        USAGE POINTER.

       *> BASED lets us view C memory at an arbitrary address (GnuCOBOL extension)
       01 WS-CSTR BASED.
          05 WS-CSTR-DATA     PIC X(256).

       *> Null-terminated strings for C functions
       01 WS-DB-URL-AREA.
          05 WS-DB-URL        PIC X(256).
          05 FILLER           PIC X VALUE X"00".
       01 WS-QUERY-AREA.
          05 WS-QUERY         PIC X(256).
          05 FILLER           PIC X VALUE X"00".

       *> Row field buffers (null bytes converted to spaces after CSTR copy)
       01 WS-F0               PIC X(20).
       01 WS-F1               PIC X(20).
       01 WS-F2               PIC X(20).
       01 WS-F3               PIC X(64).
       01 WS-F4               PIC X(64).

       PROCEDURE DIVISION.

       MAIN-SECTION SECTION.
       MAIN-INIT.
           CALL "socket" USING BY VALUE 2 BY VALUE 1 BY VALUE 0
                RETURNING WS-SERVER-FD
           IF WS-SERVER-FD < 0
               DISPLAY "ERROR: socket() failed"
               STOP RUN
           END-IF

           CALL "setsockopt" USING BY VALUE WS-SERVER-FD
                                   BY VALUE 1
                                   BY VALUE 2
                                   BY REFERENCE WS-OPT-ONE
                                   BY VALUE 4
                RETURNING WS-RC

           CALL "bind" USING BY VALUE WS-SERVER-FD
                              BY REFERENCE WS-SOCKADDR
                              BY VALUE 16
                RETURNING WS-RC
           IF WS-RC NOT = 0
               DISPLAY "ERROR: bind() failed"
               STOP RUN
           END-IF

           CALL "listen" USING BY VALUE WS-SERVER-FD BY VALUE 512
                RETURNING WS-RC

           DISPLAY "COBOL HTTP server on port 8000 — pre-forking workers"

           *> Pre-fork WS-NUM-WORKERS - 1 child processes.
           *> Both parent and each child exit this loop and proceed to
           *> CONNECT-DB, then enter the (no-fork) accept loop.
           PERFORM VARYING WS-FORK-I FROM 1 BY 1
               UNTIL WS-FORK-I >= WS-NUM-WORKERS
               CALL "fork" RETURNING WS-PID
               IF WS-PID = 0
                   EXIT PERFORM
               END-IF
           END-PERFORM

           *> Each process (parent + all children) connects to DB once.
           PERFORM CONNECT-DB

           *> All processes serve requests in a tight accept loop.
           PERFORM ACCEPT-LOOP UNTIL 1 = 2

           STOP RUN.

       CONNECT-DB.
           MOVE SPACES TO WS-DB-URL
           ACCEPT WS-DB-URL FROM ENVIRONMENT 'DATABASE_URL'
           IF WS-DB-URL = SPACES OR WS-DB-URL = LOW-VALUE
               MOVE 'postgresql://apiuser:apipassword@db:5432/ordersdb'
                   TO WS-DB-URL
           END-IF

           *> Null-terminate at the first space (URL never contains spaces)
           PERFORM VARYING WS-IDX FROM 1 BY 1
               UNTIL WS-IDX > 255 OR WS-DB-URL(WS-IDX:1) = SPACE
           END-PERFORM
           MOVE X"00" TO WS-DB-URL(WS-IDX:1)

           CALL "PQconnectdb" USING BY REFERENCE WS-DB-URL-AREA
                RETURNING WS-PG-CONN.

       ACCEPT-LOOP.
           CALL "accept" USING BY VALUE WS-SERVER-FD
                                BY VALUE 0
                                BY VALUE 0
                RETURNING WS-CLIENT-FD
           IF WS-CLIENT-FD >= 0
               PERFORM HANDLE-REQUEST
               CALL "close" USING BY VALUE WS-CLIENT-FD
                    RETURNING WS-RC
           END-IF.

       HANDLE-REQUEST.
           MOVE SPACES TO WS-REQUEST
           CALL "read" USING BY VALUE WS-CLIENT-FD
                              BY REFERENCE WS-REQUEST
                              BY VALUE 4095
                RETURNING WS-NREAD
           IF WS-NREAD <= 0
               EXIT PARAGRAPH
           END-IF

           *> Parse path from "GET /path HTTP/1.1"
           MOVE 0 TO WS-SP1 WS-SP2
           PERFORM VARYING WS-IDX FROM 1 BY 1
               UNTIL WS-IDX > WS-NREAD OR WS-SP2 > 0
               IF WS-REQUEST(WS-IDX:1) = ' '
                   IF WS-SP1 = 0
                       MOVE WS-IDX TO WS-SP1
                   ELSE
                       MOVE WS-IDX TO WS-SP2
                   END-IF
               END-IF
           END-PERFORM

           MOVE SPACES TO WS-PATH
           IF WS-SP1 > 0 AND WS-SP2 > WS-SP1 + 1
               MOVE WS-REQUEST(WS-SP1 + 1:WS-SP2 - WS-SP1 - 1) TO WS-PATH
           ELSE
               MOVE '/' TO WS-PATH(1:1)
           END-IF

           MOVE SPACES TO WS-BODY
           MOVE 0 TO WS-BODY-LEN

           EVALUATE TRUE
               WHEN WS-PATH(1:1) = '/'
                AND (WS-PATH(2:1) = ' ' OR WS-PATH(2:1) = LOW-VALUE)
                   MOVE '{"message":"Hello, World!"}' TO WS-BODY
                   MOVE 27 TO WS-BODY-LEN
               WHEN WS-PATH(1:7) = '/orders'
                AND (WS-PATH(8:1) = ' ' OR WS-PATH(8:1) = LOW-VALUE
                                       OR WS-PATH(8:1) = '?'
                                       OR WS-PATH(8:1) = X"00")
                   PERFORM HANDLE-ORDERS
               WHEN OTHER
                   PERFORM SEND-404
                   EXIT PARAGRAPH
           END-EVALUATE

           MOVE WS-BODY-LEN TO WS-LEN-STR
           MOVE SPACES TO WS-HEADERS
           STRING 'HTTP/1.1 200 OK'                       X"0D" X"0A"
                  'Content-Type: application/json'        X"0D" X"0A"
                  'Content-Length: '
                  FUNCTION TRIM(WS-LEN-STR LEADING)       X"0D" X"0A"
                  'Connection: close'                     X"0D" X"0A"
                                                          X"0D" X"0A"
                  DELIMITED SIZE INTO WS-HEADERS
           MOVE FUNCTION LENGTH(FUNCTION TRIM(WS-HEADERS TRAILING))
               TO WS-HDR-LEN
           CALL "write" USING BY VALUE WS-CLIENT-FD
                               BY REFERENCE WS-HEADERS
                               BY VALUE WS-HDR-LEN
                RETURNING WS-RC
           CALL "write" USING BY VALUE WS-CLIENT-FD
                               BY REFERENCE WS-BODY
                               BY VALUE WS-BODY-LEN
                RETURNING WS-RC.

       HANDLE-ORDERS.
           *> Re-check connection health; reconnect if needed.
           CALL "PQstatus" USING BY VALUE WS-PG-CONN
                RETURNING WS-PG-STATUS
           IF WS-PG-STATUS NOT = 0
               PERFORM CONNECT-DB
           END-IF

           MOVE SPACES TO WS-QUERY
           MOVE FUNCTION CONCATENATE(
               'SELECT id, customer_id, total_cents, status, ',
               'created_at::text FROM orders LIMIT 100 OFFSET 1000')
               TO WS-QUERY
           *> Null-terminate using trimmed length (SQL has internal spaces)
           MOVE FUNCTION LENGTH(FUNCTION TRIM(WS-QUERY TRAILING))
               TO WS-IDX
           MOVE X"00" TO WS-QUERY(WS-IDX + 1:1)
           CALL "PQexec" USING BY VALUE WS-PG-CONN
                                BY REFERENCE WS-QUERY-AREA
                RETURNING WS-PG-RES
           CALL "PQresultStatus" USING BY VALUE WS-PG-RES
                RETURNING WS-PG-STATUS
           IF WS-PG-STATUS NOT = 2
               CALL "PQclear" USING BY VALUE WS-PG-RES
               MOVE '[]' TO WS-BODY
               MOVE 2 TO WS-BODY-LEN
               EXIT PARAGRAPH
           END-IF

           CALL "PQntuples" USING BY VALUE WS-PG-RES
                RETURNING WS-N-ROWS
           MOVE '[' TO WS-BODY(1:1)
           MOVE 2 TO WS-BODY-LEN

           PERFORM VARYING WS-ROW FROM 0 BY 1
               UNTIL WS-ROW >= WS-N-ROWS

               *> id (field 0)
               MOVE 0 TO WS-FLD-IDX
               CALL "PQgetvalue"
                   USING BY VALUE WS-PG-RES BY VALUE WS-ROW BY VALUE WS-FLD-IDX
                   RETURNING WS-FIELD-PTR
               SET ADDRESS OF WS-CSTR TO WS-FIELD-PTR
               MOVE SPACES TO WS-F0
               PERFORM VARYING WS-IDX FROM 1 BY 1
                   UNTIL WS-IDX > 20
                      OR WS-CSTR-DATA(WS-IDX:1) = X"00"
                      OR WS-CSTR-DATA(WS-IDX:1) = LOW-VALUE
                   MOVE WS-CSTR-DATA(WS-IDX:1) TO WS-F0(WS-IDX:1)
               END-PERFORM

               *> customer_id (field 1)
               MOVE 1 TO WS-FLD-IDX
               CALL "PQgetvalue"
                   USING BY VALUE WS-PG-RES BY VALUE WS-ROW BY VALUE WS-FLD-IDX
                   RETURNING WS-FIELD-PTR
               SET ADDRESS OF WS-CSTR TO WS-FIELD-PTR
               MOVE SPACES TO WS-F1
               PERFORM VARYING WS-IDX FROM 1 BY 1
                   UNTIL WS-IDX > 20
                      OR WS-CSTR-DATA(WS-IDX:1) = X"00"
                      OR WS-CSTR-DATA(WS-IDX:1) = LOW-VALUE
                   MOVE WS-CSTR-DATA(WS-IDX:1) TO WS-F1(WS-IDX:1)
               END-PERFORM

               *> total_cents (field 2)
               MOVE 2 TO WS-FLD-IDX
               CALL "PQgetvalue"
                   USING BY VALUE WS-PG-RES BY VALUE WS-ROW BY VALUE WS-FLD-IDX
                   RETURNING WS-FIELD-PTR
               SET ADDRESS OF WS-CSTR TO WS-FIELD-PTR
               MOVE SPACES TO WS-F2
               PERFORM VARYING WS-IDX FROM 1 BY 1
                   UNTIL WS-IDX > 20
                      OR WS-CSTR-DATA(WS-IDX:1) = X"00"
                      OR WS-CSTR-DATA(WS-IDX:1) = LOW-VALUE
                   MOVE WS-CSTR-DATA(WS-IDX:1) TO WS-F2(WS-IDX:1)
               END-PERFORM

               *> status (field 3)
               MOVE 3 TO WS-FLD-IDX
               CALL "PQgetvalue"
                   USING BY VALUE WS-PG-RES BY VALUE WS-ROW BY VALUE WS-FLD-IDX
                   RETURNING WS-FIELD-PTR
               SET ADDRESS OF WS-CSTR TO WS-FIELD-PTR
               MOVE SPACES TO WS-F3
               PERFORM VARYING WS-IDX FROM 1 BY 1
                   UNTIL WS-IDX > 64
                      OR WS-CSTR-DATA(WS-IDX:1) = X"00"
                      OR WS-CSTR-DATA(WS-IDX:1) = LOW-VALUE
                   MOVE WS-CSTR-DATA(WS-IDX:1) TO WS-F3(WS-IDX:1)
               END-PERFORM

               *> created_at (field 4)
               MOVE 4 TO WS-FLD-IDX
               CALL "PQgetvalue"
                   USING BY VALUE WS-PG-RES BY VALUE WS-ROW BY VALUE WS-FLD-IDX
                   RETURNING WS-FIELD-PTR
               SET ADDRESS OF WS-CSTR TO WS-FIELD-PTR
               MOVE SPACES TO WS-F4
               PERFORM VARYING WS-IDX FROM 1 BY 1
                   UNTIL WS-IDX > 64
                      OR WS-CSTR-DATA(WS-IDX:1) = X"00"
                      OR WS-CSTR-DATA(WS-IDX:1) = LOW-VALUE
                   MOVE WS-CSTR-DATA(WS-IDX:1) TO WS-F4(WS-IDX:1)
               END-PERFORM

               IF WS-ROW > 0
                   MOVE ',' TO WS-BODY(WS-BODY-LEN:1)
                   ADD 1 TO WS-BODY-LEN
               END-IF

               MOVE SPACES TO WS-OBJ
               STRING
                   '{"id":' FUNCTION TRIM(WS-F0 TRAILING)
                   ',"customer_id":' FUNCTION TRIM(WS-F1 TRAILING)
                   ',"total_cents":' FUNCTION TRIM(WS-F2 TRAILING)
                   ',"status":"' FUNCTION TRIM(WS-F3 TRAILING) '"'
                   ',"created_at":"' FUNCTION TRIM(WS-F4 TRAILING) '"}'
                   DELIMITED SIZE INTO WS-OBJ
               MOVE FUNCTION LENGTH(FUNCTION TRIM(WS-OBJ TRAILING))
                   TO WS-OBJ-LEN
               MOVE WS-OBJ(1:WS-OBJ-LEN) TO WS-BODY(WS-BODY-LEN:WS-OBJ-LEN)
               ADD WS-OBJ-LEN TO WS-BODY-LEN

           END-PERFORM

           MOVE ']' TO WS-BODY(WS-BODY-LEN:1)
           *> WS-BODY-LEN is now exactly the body byte count (no ADD 1 needed)
           CALL "PQclear" USING BY VALUE WS-PG-RES.

       SEND-404.
           MOVE SPACES TO WS-HEADERS
           STRING 'HTTP/1.1 404 Not Found'  X"0D" X"0A"
                  'Content-Length: 0'       X"0D" X"0A"
                  'Connection: close'       X"0D" X"0A"
                                            X"0D" X"0A"
                  DELIMITED SIZE INTO WS-HEADERS
           MOVE FUNCTION LENGTH(FUNCTION TRIM(WS-HEADERS TRAILING))
               TO WS-HDR-LEN
           CALL "write" USING BY VALUE WS-CLIENT-FD
                               BY REFERENCE WS-HEADERS
                               BY VALUE WS-HDR-LEN
                RETURNING WS-RC.
