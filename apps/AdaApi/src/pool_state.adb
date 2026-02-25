--  Pool_State package body
--  Implements Handle_Client using only stack-allocated strings and direct C
--  calls.  No Ada.Strings.Unbounded or Ada finalization -- those require
--  GNAT per-thread runtime initialisation that is NOT done when threads are
--  created by raw pthread_create (bypassing Ada.Tasking).

with Interfaces.C;             use Interfaces.C;
with Interfaces.C.Strings;     use Interfaces.C.Strings;
with System;
with System.Storage_Elements;  use System.Storage_Elements;

package body Pool_State is

   PGRES_TUPLES_OK : constant int := 2;

   --  Package-level constant: elaborated once in the main thread (safe).
   --  Null-terminated C string for the /orders query.
   SQL_Query : constant String :=
     "SELECT id, customer_id, total_cents, status, " &
     "created_at::text FROM orders LIMIT 100 OFFSET 1000" & ASCII.NUL;

   ---------------------------------------------------------------------------
   --  C bindings`
   ---------------------------------------------------------------------------

   function C_Read  (Fd : int; Buf : System.Address; N : int) return int;
   pragma Import (C, C_Read,  "read");

   function C_Write (Fd : int; Buf : System.Address; N : int) return int;
   pragma Import (C, C_Write, "write");

   function C_Close (Fd : int) return int;
   pragma Import (C, C_Close, "close");

   procedure C_Free (Ptr : System.Address);
   pragma Import (C, C_Free,  "free");

   function PQexec
     (Conn  : System.Address; Query : System.Address) return System.Address;
   pragma Import (C, PQexec, "PQexec");

   function PQresultStatus (Res : System.Address) return int;
   pragma Import (C, PQresultStatus, "PQresultStatus");

   function PQntuples (Res : System.Address) return int;
   pragma Import (C, PQntuples, "PQntuples");

   function PQgetvalue
     (Res : System.Address; Row, Field : int) return System.Address;
   pragma Import (C, PQgetvalue, "PQgetvalue");

   procedure PQclear (Res : System.Address);
   pragma Import (C, PQclear, "PQclear");

   function Pthread_Mutex_Lock   (M : System.Address) return int;
   pragma Import (C, Pthread_Mutex_Lock,   "pthread_mutex_lock");

   function Pthread_Mutex_Unlock (M : System.Address) return int;
   pragma Import (C, Pthread_Mutex_Unlock, "pthread_mutex_unlock");

   function Pthread_Cond_Wait
     (C_Var, Mutex : System.Address) return int;
   pragma Import (C, Pthread_Cond_Wait, "pthread_cond_wait");

   function Pthread_Cond_Signal (C_Var : System.Address) return int;
   pragma Import (C, Pthread_Cond_Signal, "pthread_cond_signal");

   ---------------------------------------------------------------------------
   --  Stack-based string builder -- avoids all Ada runtime heap operations
   ---------------------------------------------------------------------------

   type Buf_T is record
      Data : String (1 .. 131072);
      Len  : Natural := 0;
   end record;

   procedure Buf_Append (B : in out Buf_T; S : String) is
   begin
      if B.Len + S'Length <= B.Data'Last then
         B.Data (B.Len + 1 .. B.Len + S'Length) := S;
         B.Len := B.Len + S'Length;
      end if;
   end Buf_Append;

   --  Append a single character -- avoids creating a temp String.
   procedure Buf_Char (B : in out Buf_T; C : Character) is
   begin
      if B.Len < B.Data'Last then
         B.Len := B.Len + 1;
         B.Data (B.Len) := C;
      end if;
   end Buf_Char;

   --  Append integer N directly into B -- no secondary stack (no String return).
   procedure Buf_Append_Int (B : in out Buf_T; N : Integer) is
      S   : String (1 .. 12);
      Pos : Integer := S'Last;
      V   : Integer := (if N < 0 then -N else N);
   begin
      loop
         S (Pos) := Character'Val (V mod 10 + Character'Pos ('0'));
         Pos := Pos - 1;
         V := V / 10;
         exit when V = 0;
      end loop;
      if N < 0 then
         S (Pos) := '-';
         Pos := Pos - 1;
      end if;
      Buf_Append (B, S (Pos + 1 .. S'Last));
   end Buf_Append_Int;

   --  Append a C null-terminated string -- pointer walk, no Value()/secondary stack.
   procedure Append_Cstr (B : in out Buf_T; P : System.Address) is
      Addr : Integer_Address := To_Integer (P);
   begin
      loop
         declare
            Ch : Character;
            for Ch'Address use To_Address (Addr);
            pragma Import (Ada, Ch);
         begin
            exit when Ch = ASCII.NUL;
            Buf_Char (B, Ch);
         end;
         Addr := Addr + 1;
      end loop;
   end Append_Cstr;

   --  Append a C null-terminated string with JSON escaping -- no secondary stack.
   procedure Escape_Cstr (B : in out Buf_T; P : System.Address) is
      Addr : Integer_Address := To_Integer (P);
   begin
      loop
         declare
            Ch : Character;
            for Ch'Address use To_Address (Addr);
            pragma Import (Ada, Ch);
         begin
            exit when Ch = ASCII.NUL;
            if Ch = '"' then
               Buf_Char (B, '\');
               Buf_Char (B, '"');
            elsif Ch = '\' then
               Buf_Char (B, '\');
               Buf_Char (B, '\');
            else
               Buf_Char (B, Ch);
            end if;
         end;
         Addr := Addr + 1;
      end loop;
   end Escape_Cstr;

   --  Write a static 404 response -- all literal, no & concatenation.
   procedure Send_404 (Fd : int) is
      Hdr : Buf_T;
      Ign : int;
      pragma Unreferenced (Ign);
   begin
      Buf_Append (Hdr, "HTTP/1.1 404 Not Found");
      Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
      Buf_Append (Hdr, "Content-Length: 0");
      Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
      Buf_Append (Hdr, "Connection: close");
      Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
      Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
      Ign := C_Write (Fd, Hdr.Data (1)'Address, int (Hdr.Len));
   end Send_404;

   ---------------------------------------------------------------------------
   --  Handle_Client -- library-level, C-convention thread entry point.
   --  No host association, no trampolines, no secondary stack.
   ---------------------------------------------------------------------------

   function Handle_Client (Arg : System.Address) return System.Address is
      use type System.Address;

      C_Arg : Conn_Arg;
      for C_Arg'Address use Arg;
      pragma Import (Ada, C_Arg);

      Fd    : constant int := C_Arg.Client_Fd;
      Buf   : String (1 .. 4096);
      Nread : int;
      Ign   : int;
      pragma Unreferenced (Ign);

   begin
      C_Free (Arg);

      Nread := C_Read (Fd, Buf (1)'Address, int (Buf'Length - 1));
      if Nread <= 0 then
         Ign := C_Close (Fd);
         return System.Null_Address;
      end if;

      --  Parse path: "METHOD /path HTTP/..."
      declare
         Req        : String renames Buf (1 .. Integer (Nread));
         I, J       : Natural := 0;
         Resp       : Buf_T;
         Is_Orders  : Boolean := False;
         Is_Root    : Boolean := False;
         Is_Unknown : Boolean := False;
      begin
         for K in Req'Range loop
            if Req (K) = ' ' then
               if I = 0 then
                  I := K + 1;
               else
                  J := K;
                  exit;
               end if;
            end if;
         end loop;

         if I > 0 and then J > I then
            declare
               P : constant String := Req (I .. J - 1);
            begin
               if P = "/" then
                  Is_Root := True;
               elsif P = "/orders" then
                  Is_Orders := True;
               else
                  Is_Unknown := True;
               end if;
            end;
         else
            Is_Root := True;
         end if;

         pragma Unreferenced (Is_Orders);

         if Is_Unknown then
            Send_404 (Fd);
            Ign := C_Close (Fd);
            return System.Null_Address;
         end if;

         ------------------------------------------------------------------
         --  Route: GET /
         ------------------------------------------------------------------
         if Is_Root then
            Buf_Append (Resp, "{""message"":""Hello, World!""}");

         ------------------------------------------------------------------
         --  Route: GET /orders
         ------------------------------------------------------------------
         else
            declare
               Slot_Idx : int := -1;
               Conn     : System.Address;
               Res      : System.Address;
               N        : int;
            begin
               --  Acquire a free pool slot
               Ign := Pthread_Mutex_Lock (G_State.Mutex'Address);
               loop
                  for I2 in 0 .. Pool_Size - 1 loop
                     if G_State.Slots (I2).In_Use = 0 then
                        Slot_Idx := int (I2);
                        exit;
                     end if;
                  end loop;
                  exit when Slot_Idx >= 0;
                  Ign := Pthread_Cond_Wait
                    (G_State.Cond'Address, G_State.Mutex'Address);
               end loop;
               G_State.Slots (Integer (Slot_Idx)).In_Use := 1;
               Conn := G_State.Slots (Integer (Slot_Idx)).Conn;
               Ign := Pthread_Mutex_Unlock (G_State.Mutex'Address);

               --  SQL_Query is a package-body-level constant (safe in threads)
               Res := PQexec (Conn, SQL_Query (SQL_Query'First)'Address);

               if PQresultStatus (Res) = PGRES_TUPLES_OK then
                  N := PQntuples (Res);
                  Buf_Char (Resp, '[');
                  for Row in 0 .. N - 1 loop
                     if Row > 0 then Buf_Char (Resp, ','); end if;
                     Buf_Append (Resp, "{""id"":");
                     Append_Cstr (Resp, PQgetvalue (Res, Row, 0));
                     Buf_Append (Resp, ",""customer_id"":");
                     Append_Cstr (Resp, PQgetvalue (Res, Row, 1));
                     Buf_Append (Resp, ",""total_cents"":");
                     Append_Cstr (Resp, PQgetvalue (Res, Row, 2));
                     Buf_Append (Resp, ",""status"":""");
                     Escape_Cstr (Resp, PQgetvalue (Res, Row, 3));
                     Buf_Append (Resp, """,""created_at"":""");
                     Escape_Cstr (Resp, PQgetvalue (Res, Row, 4));
                     Buf_Char (Resp, '"');
                     Buf_Char (Resp, '}');
                  end loop;
                  Buf_Char (Resp, ']');
               else
                  Buf_Append (Resp, "[]");
               end if;

               PQclear (Res);

               --  Release slot
               Ign := Pthread_Mutex_Lock (G_State.Mutex'Address);
               G_State.Slots (Integer (Slot_Idx)).In_Use := 0;
               Ign := Pthread_Cond_Signal (G_State.Cond'Address);
               Ign := Pthread_Mutex_Unlock (G_State.Mutex'Address);
            end;
         end if;

         --  HTTP 200 header -- built char-by-char, no & concatenation
         declare
            Hdr : Buf_T;
         begin
            Buf_Append (Hdr, "HTTP/1.1 200 OK");
            Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
            Buf_Append (Hdr, "Content-Type: application/json");
            Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
            Buf_Append (Hdr, "Content-Length: ");
            Buf_Append_Int (Hdr, Resp.Len);
            Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
            Buf_Append (Hdr, "Connection: close");
            Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
            Buf_Char (Hdr, ASCII.CR); Buf_Char (Hdr, ASCII.LF);
            Ign := C_Write (Fd, Hdr.Data (1)'Address, int (Hdr.Len));
            if Resp.Len > 0 then
               Ign := C_Write (Fd, Resp.Data (1)'Address, int (Resp.Len));
            end if;
         end;
      end;

      Ign := C_Close (Fd);
      return System.Null_Address;
   end Handle_Client;

end Pool_State;
