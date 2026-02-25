--  Pool_State package specification
--  Declares the shared connection pool state and the library-level
--  Handle_Client thread entry point.  Being at the *library* (package) level
--  means GNAT will NOT generate a trampoline for Handle_Client — a trampoline
--  is only needed for nested subprograms that close over an outer stack frame,
--  and trampolines require an executable stack which Linux denies by default.

with System;
with Interfaces.C;         use Interfaces.C;
with Interfaces.C.Strings; use Interfaces.C.Strings;

package Pool_State is

   Pool_Size : constant := 16;

   --  pthread_mutex_t is 40 bytes on Linux x86-64; must be 8-byte aligned
   type Pthread_Mutex_T is array (0 .. 4) of Interfaces.C.long;
   pragma Convention (C, Pthread_Mutex_T);

   --  pthread_cond_t is 48 bytes on Linux x86-64; must be 8-byte aligned
   type Pthread_Cond_T is array (0 .. 5) of Interfaces.C.long;
   pragma Convention (C, Pthread_Cond_T);

   type Pool_Slot is record
      Conn   : System.Address;  -- PGconn*
      In_Use : int;             -- 0 = free, 1 = acquired
   end record;
   pragma Convention (C, Pool_Slot);

   type Pool_Array is array (0 .. Pool_Size - 1) of Pool_Slot;
   pragma Convention (C, Pool_Array);

   type Shared_State is record
      Slots : Pool_Array;
      Mutex : Pthread_Mutex_T;
      Cond  : Pthread_Cond_T;
   end record;
   pragma Convention (C, Shared_State);

   --  Single library-level pool instance — initialised by Main before any
   --  threads are spawned, then read/written under Mutex by Handle_Client.
   G_State : Shared_State;

   --  Per-connection heap argument (malloc'd by Main, freed by Handle_Client).
   type Conn_Arg is record
      Client_Fd : int;
   end record;
   pragma Convention (C, Conn_Arg);

   --  Library-level thread entry point.  pragma Convention (C) is sufficient
   --  here — no trampoline is generated because this subprogram is NOT nested
   --  inside another Ada subprogram; it lives at library level.
   function Handle_Client (Arg : System.Address) return System.Address;
   pragma Convention (C, Handle_Client);

end Pool_State;
