--  Ada HTTP API Server
--  Main procedure: initialises the DB connection pool (Pool_State.G_State),
--  opens the TCP listen socket, and accepts connections in a loop.  Each
--  accepted connection is handed to a detached pthread that calls
--  Pool_State.Handle_Client — a *library-level* function, so GNAT never
--  generates a trampoline for it and it works correctly with Linux's NX bit.

with Ada.Text_IO;
with Ada.Environment_Variables;
with Interfaces.C;            use Interfaces.C;
with Interfaces.C.Strings;    use Interfaces.C.Strings;
with System;
use type System.Address;
with Pool_State;              use Pool_State;

procedure Main is

   -- ── C type aliases ─────────────────────────────────────────────────────
   subtype C_Socklen is unsigned;

   -- ── struct sockaddr_in (16 bytes, Linux x86-64) ─────────────────────────
   type Sockaddr_In is record
      Sin_Family : short;
      Sin_Port   : short;
      Sin_Addr   : int;
      Sin_Zero   : char_array (0 .. 7);
   end record;
   pragma Convention (C, Sockaddr_In);

   -- ── POSIX socket/IO bindings ─────────────────────────────────────────────
   function C_Socket
     (Domain, Typ, Protocol : int) return int;
   pragma Import (C, C_Socket, "socket");

   function C_Bind
     (Fd : int; Addr : System.Address; Len : C_Socklen) return int;
   pragma Import (C, C_Bind, "bind");

   function C_Listen (Fd, Backlog : int) return int;
   pragma Import (C, C_Listen, "listen");

   function C_Accept
     (Fd : int; Addr : System.Address; Len : System.Address) return int;
   pragma Import (C, C_Accept, "accept");

   function C_Close (Fd : int) return int;
   pragma Import (C, C_Close, "close");

   function C_Setsockopt
     (Fd, Level, Optname : int;
      Optval             : System.Address;
      Optlen             : C_Socklen) return int;
   pragma Import (C, C_Setsockopt, "setsockopt");

   function C_Htons (S : short) return short;
   pragma Import (C, C_Htons, "htons");

   -- ── pthread bindings (only what Main itself needs) ────────────────────

   type Pthread_T is new Long_Integer;

   function Pthread_Create
     (Thread        : System.Address;
      Attr          : System.Address;
      Start_Routine : System.Address;
      Arg           : System.Address) return int;
   pragma Import (C, Pthread_Create, "pthread_create");

   function Pthread_Detach (Thread : Pthread_T) return int;
   pragma Import (C, Pthread_Detach, "pthread_detach");

   function Pthread_Mutex_Init
     (M, Attr : System.Address) return int;
   pragma Import (C, Pthread_Mutex_Init, "pthread_mutex_init");

   function Pthread_Cond_Init
     (C_Var, Attr : System.Address) return int;
   pragma Import (C, Pthread_Cond_Init, "pthread_cond_init");

   -- ── Heap allocation ──────────────────────────────────────────────────────
   function C_Malloc (Size : int) return System.Address;
   pragma Import (C, C_Malloc, "malloc");

   procedure C_Free (Ptr : System.Address);
   pragma Import (C, C_Free, "free");

   -- ── libpq bindings (pool init only) ─────────────────────────────────────
   function PQconnectdb (conninfo : chars_ptr) return System.Address;
   pragma Import (C, PQconnectdb, "PQconnectdb");

   function PQstatus (conn : System.Address) return int;
   pragma Import (C, PQstatus, "PQstatus");

   CONNECTION_OK : constant int := 0;

   -- ── Server constants ──────────────────────────────────────────────────────
   AF_INET      : constant int := 2;
   SOCK_STREAM  : constant int := 1;
   SOL_SOCKET   : constant int := 1;
   SO_REUSEADDR : constant int := 2;

   Server_Fd : int;
   Client_Fd : int;
   Opt       : int := 1;
   Addr      : Sockaddr_In;
   Thread    : Pthread_T := 0;
   Rc        : int;
   pragma Unreferenced (Rc);

   --  DB connection string (read once, before any threads are spawned).
   DB_URL : constant String :=
     Ada.Environment_Variables.Value
       ("DATABASE_URL",
        "postgresql://apiuser:apipassword@db:5432/ordersdb");

   Arg_Addr : System.Address;

begin
   Ada.Text_IO.Put_Line ("Ada HTTP server starting on port 8000");

   -- ── Initialise pool synchronisation primitives ───────────────────────────
   Rc := Pthread_Mutex_Init (G_State.Mutex'Address, System.Null_Address);
   Rc := Pthread_Cond_Init  (G_State.Cond'Address,  System.Null_Address);

   -- ── Pre-connect all pool slots ───────────────────────────────────────────
   Ada.Text_IO.Put_Line
     ("Connecting pool of" & Integer'Image (Pool_Size) & " DB connections...");
   declare
      CI : chars_ptr := New_String (DB_URL);
   begin
      for I in 0 .. Pool_Size - 1 loop
         G_State.Slots (I).Conn   := PQconnectdb (CI);
         G_State.Slots (I).In_Use := 0;
         if PQstatus (G_State.Slots (I).Conn) /= CONNECTION_OK then
            Ada.Text_IO.Put_Line
              ("WARNING: pool slot" & Integer'Image (I) & " failed to connect");
         end if;
      end loop;
      Free (CI);
   end;
   Ada.Text_IO.Put_Line ("DB pool ready.");

   -- ── TCP server setup ─────────────────────────────────────────────────────
   Server_Fd := C_Socket (AF_INET, SOCK_STREAM, 0);
   if Server_Fd < 0 then
      Ada.Text_IO.Put_Line ("socket() failed");
      return;
   end if;

   Rc := C_Setsockopt
     (Server_Fd, SOL_SOCKET, SO_REUSEADDR, Opt'Address, 4);

   Addr := (Sin_Family => short (AF_INET),
            Sin_Port   => C_Htons (short (8000)),
            Sin_Addr   => 0,
            Sin_Zero   => (others => char'Val (0)));

   if C_Bind (Server_Fd, Addr'Address,
               C_Socklen (Sockaddr_In'Size / System.Storage_Unit)) /= 0
   then
      Ada.Text_IO.Put_Line ("bind() failed");
      return;
   end if;

   if C_Listen (Server_Fd, 512) /= 0 then
      Ada.Text_IO.Put_Line ("listen() failed");
      return;
   end if;

   -- ── Accept loop ───────────────────────────────────────────────────────────
   loop
      Client_Fd := C_Accept
        (Server_Fd, System.Null_Address, System.Null_Address);

      if Client_Fd >= 0 then
         --  Use C malloc so the thread can safely call C_Free without
         --  touching the Ada runtime storage pool across thread boundaries.
         Arg_Addr := C_Malloc (int (Conn_Arg'Size / System.Storage_Unit));

         if Arg_Addr /= System.Null_Address then
            declare
               A : Conn_Arg;
               for A'Address use Arg_Addr;
               pragma Import (Ada, A);
            begin
               A.Client_Fd := Client_Fd;
            end;

            if Pthread_Create
              (Thread'Address,
               System.Null_Address,
               Handle_Client'Address,
               Arg_Addr) = 0
            then
               declare
                  D : int;
                  pragma Unreferenced (D);
               begin
                  D := Pthread_Detach (Thread);
               end;
            else
               --  Thread creation failed: release memory and drop connection.
               C_Free (Arg_Addr);
               declare
                  D : int;
                  pragma Unreferenced (D);
               begin
                  D := C_Close (Client_Fd);
               end;
            end if;
         else
            --  malloc failed: drop connection.
            declare
               D : int;
               pragma Unreferenced (D);
            begin
               D := C_Close (Client_Fd);
            end;
         end if;
      end if;
   end loop;
end Main;
