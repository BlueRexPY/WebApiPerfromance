! Fortran HTTP API Server
! Uses iso_c_binding (standard Fortran 2003) to call POSIX sockets and libpq.
! No C source files are written; all bindings are expressed in Fortran.

module libpq_mod
  use iso_c_binding, only: c_ptr, c_int, c_null_ptr, c_char, c_null_char, &
                            c_f_pointer, c_associated
  implicit none

  interface
    function PQconnectdb(conninfo) bind(C, name="PQconnectdb") result(conn)
      use iso_c_binding, only: c_ptr, c_char
      character(kind=c_char), intent(in) :: conninfo(*)
      type(c_ptr) :: conn
    end function

    function PQstatus(conn) bind(C, name="PQstatus") result(status)
      use iso_c_binding, only: c_ptr, c_int
      type(c_ptr), value :: conn
      integer(c_int) :: status
    end function

    subroutine PQfinish(conn) bind(C, name="PQfinish")
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: conn
    end subroutine

    function PQexec(conn, query) bind(C, name="PQexec") result(res)
      use iso_c_binding, only: c_ptr, c_char
      type(c_ptr), value :: conn
      character(kind=c_char), intent(in) :: query(*)
      type(c_ptr) :: res
    end function

    function PQresultStatus(res) bind(C, name="PQresultStatus") result(status)
      use iso_c_binding, only: c_ptr, c_int
      type(c_ptr), value :: res
      integer(c_int) :: status
    end function

    function PQntuples(res) bind(C, name="PQntuples") result(n)
      use iso_c_binding, only: c_ptr, c_int
      type(c_ptr), value :: res
      integer(c_int) :: n
    end function

    function PQgetvalue(res, tup_num, field_num) &
        bind(C, name="PQgetvalue") result(val)
      use iso_c_binding, only: c_ptr, c_int
      type(c_ptr), value :: res
      integer(c_int), value :: tup_num, field_num
      type(c_ptr) :: val
    end function

    subroutine PQclear(res) bind(C, name="PQclear")
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: res
    end subroutine
  end interface

  integer, parameter :: CONNECTION_OK   = 0
  integer, parameter :: PGRES_TUPLES_OK = 2

contains

  ! Convert Fortran string to a null-terminated c_char array in a buffer
  subroutine f_to_c_str(f_str, c_buf)
    character(len=*), intent(in)    :: f_str
    character(kind=c_char), intent(out) :: c_buf(*)
    integer :: i
    do i = 1, len_trim(f_str)
      c_buf(i) = f_str(i:i)
    end do
    c_buf(len_trim(f_str) + 1) = c_null_char
  end subroutine

  ! Convert a c_char pointer (returned by PQgetvalue) to a Fortran string
  function c_ptr_to_f_str(cptr) result(fstr)
    type(c_ptr), intent(in) :: cptr
    character(len=256) :: fstr
    character(kind=c_char), pointer :: cstr(:)
    integer :: i
    fstr = ''
    if (.not. c_associated(cptr)) return
    call c_f_pointer(cptr, cstr, [256])
    do i = 1, 256
      if (cstr(i) == c_null_char) exit
      fstr(i:i) = cstr(i)
    end do
  end function

end module libpq_mod

! ── POSIX socket + pthread bindings ──────────────────────────────────────────
module socket_mod
  use iso_c_binding
  implicit none

  integer(c_int), parameter :: AF_INET     = 2
  integer(c_int), parameter :: SOCK_STREAM = 1
  integer(c_int), parameter :: SOL_SOCKET  = 1
  integer(c_int), parameter :: SO_REUSEADDR = 2
  integer(c_int), parameter :: INADDR_ANY  = 0

  ! struct sockaddr_in for Linux x86-64
  type, bind(c) :: sockaddr_in_t
    integer(c_short) :: sin_family
    integer(c_short) :: sin_port       ! network byte order
    integer(c_int)   :: sin_addr       ! s_addr
    character(c_char) :: sin_zero(8)
  end type

  interface
    function c_socket(domain, type, protocol) bind(C, name="socket") result(fd)
      use iso_c_binding
      integer(c_int), value :: domain, type, protocol
      integer(c_int) :: fd
    end function

    function c_bind(sockfd, addr, addrlen) bind(C, name="bind") result(r)
      use iso_c_binding
      integer(c_int), value :: sockfd, addrlen
      type(c_ptr), value :: addr
      integer(c_int) :: r
    end function

    function c_listen(sockfd, backlog) bind(C, name="listen") result(r)
      use iso_c_binding
      integer(c_int), value :: sockfd, backlog
      integer(c_int) :: r
    end function

    function c_accept(sockfd, addr, addrlen) bind(C, name="accept") result(fd)
      use iso_c_binding
      integer(c_int), value :: sockfd
      type(c_ptr), value :: addr
      type(c_ptr), value :: addrlen
      integer(c_int) :: fd
    end function

    function c_read(fd, buf, nbyte) bind(C, name="read") result(n)
      use iso_c_binding
      integer(c_int), value :: fd, nbyte
      type(c_ptr), value :: buf
      integer(c_int) :: n
    end function

    function c_write(fd, buf, nbyte) bind(C, name="write") result(n)
      use iso_c_binding
      integer(c_int), value :: fd, nbyte
      type(c_ptr), value :: buf
      integer(c_int) :: n
    end function

    function c_close(fd) bind(C, name="close") result(r)
      use iso_c_binding
      integer(c_int), value :: fd
      integer(c_int) :: r
    end function

    function c_setsockopt(sockfd, level, optname, optval, optlen) &
        bind(C, name="setsockopt") result(r)
      use iso_c_binding
      integer(c_int), value :: sockfd, level, optname, optlen
      type(c_ptr), value :: optval
      integer(c_int) :: r
    end function

    function htons(hostshort) bind(C, name="htons") result(r)
      use iso_c_binding
      integer(c_short), value :: hostshort
      integer(c_short) :: r
    end function

    function pthread_create(thread, attr, start_routine, arg) &
        bind(C, name="pthread_create") result(r)
      use iso_c_binding
      type(c_ptr), intent(out) :: thread
      type(c_ptr), value :: attr
      type(c_funptr), value :: start_routine
      type(c_ptr), value :: arg
      integer(c_int) :: r
    end function

    function pthread_detach(thread) bind(C, name="pthread_detach") result(r)
      use iso_c_binding
      type(c_ptr), value :: thread
      integer(c_int) :: r
    end function

    function pthread_mutex_init(mutex, attr) &
        bind(C, name="pthread_mutex_init") result(r)
      use iso_c_binding
      type(c_ptr), value :: mutex, attr
      integer(c_int) :: r
    end function

    function pthread_mutex_lock(mutex) &
        bind(C, name="pthread_mutex_lock") result(r)
      use iso_c_binding
      type(c_ptr), value :: mutex
      integer(c_int) :: r
    end function

    function pthread_mutex_unlock(mutex) &
        bind(C, name="pthread_mutex_unlock") result(r)
      use iso_c_binding
      type(c_ptr), value :: mutex
      integer(c_int) :: r
    end function

    function pthread_cond_init(cond, attr) &
        bind(C, name="pthread_cond_init") result(r)
      use iso_c_binding
      type(c_ptr), value :: cond, attr
      integer(c_int) :: r
    end function

    function pthread_cond_wait(cond, mutex) &
        bind(C, name="pthread_cond_wait") result(r)
      use iso_c_binding
      type(c_ptr), value :: cond, mutex
      integer(c_int) :: r
    end function

    function pthread_cond_signal(cond) &
        bind(C, name="pthread_cond_signal") result(r)
      use iso_c_binding
      type(c_ptr), value :: cond
      integer(c_int) :: r
    end function
  end interface

end module socket_mod

! ── Main program ──────────────────────────────────────────────────────────────
program server
  use iso_c_binding
  use iso_fortran_env, only: error_unit
  use libpq_mod
  use socket_mod
  implicit none

  type, bind(c) :: conn_arg_t
    integer(c_int) :: client_fd
  end type

  integer, parameter :: POOL_SIZE = 16

  integer(c_int) :: server_fd, client_fd, r
  integer(c_int), target :: opt
  type(sockaddr_in_t), target :: addr
  type(c_ptr) :: thread_handle
  type(conn_arg_t), pointer   :: farg
  type(c_ptr) :: arg_ptr

  ! Connection pool — initialised once before spawning any threads
  type(c_ptr),      dimension(POOL_SIZE)           :: pool_conns
  integer(c_int),   dimension(POOL_SIZE), target   :: pool_inuse
  character(c_char), dimension(40),       target   :: pool_mutex_buf  ! pthread_mutex_t
  character(c_char), dimension(48),       target   :: pool_cond_buf   ! pthread_cond_t

  ! Pool init temporaries
  character(c_char) :: db_url_c_main(512)
  character(len=512) :: db_url_f_main
  integer(c_int) :: k_init

  server_fd = c_socket(AF_INET, SOCK_STREAM, 0)
  if (server_fd < 0) stop "socket() failed"

  opt = 1
  r = c_setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, c_loc(opt), 4_c_int)

  addr%sin_family = int(AF_INET, c_short)
  addr%sin_port   = htons(8000_c_short)
  addr%sin_addr   = INADDR_ANY
  addr%sin_zero   = c_null_char

  r = c_bind(server_fd, c_loc(addr), int(storage_size(addr)/8, c_int))
  if (r /= 0) stop "bind() failed"

  r = c_listen(server_fd, 512_c_int)
  if (r /= 0) stop "listen() failed"

  write(error_unit, *) "Fortran HTTP server listening on port 8000"

  ! ── Initialise connection pool ───────────────────────────────────────────
  r = pthread_mutex_init(c_loc(pool_mutex_buf), c_null_ptr)
  r = pthread_cond_init(c_loc(pool_cond_buf), c_null_ptr)
  call get_environment_variable('DATABASE_URL', db_url_f_main)
  if (len_trim(db_url_f_main) == 0) then
    db_url_f_main = 'postgresql://apiuser:apipassword@db:5432/ordersdb'
  end if
  call f_to_c_str(db_url_f_main, db_url_c_main)
  do k_init = 1, POOL_SIZE
    pool_conns(k_init) = PQconnectdb(db_url_c_main)
    pool_inuse(k_init) = 0_c_int
  end do
  write(error_unit, *) "DB pool ready (", POOL_SIZE, " connections)"

  do
    client_fd = c_accept(server_fd, c_null_ptr, c_null_ptr)
    if (client_fd < 0) cycle

    allocate(farg)
    farg%client_fd = client_fd
    arg_ptr = c_loc(farg)
    r = pthread_create(thread_handle, c_null_ptr, c_funloc(handle_client), arg_ptr)
    if (r == 0) r = pthread_detach(thread_handle)
  end do

contains

  ! Thread entry point — each connection gets its own OS thread
  subroutine handle_client(arg_c) bind(C)
    use iso_c_binding
    use libpq_mod
    type(c_ptr), intent(in), value :: arg_c
    type(conn_arg_t), pointer :: arg
    integer(c_int) :: fd
    character(kind=c_char), target :: buf(4096)
    integer(c_int) :: nread
    character(len=4096) :: req
    character(len=65536) :: body
    character(len=256) :: path
    integer :: i, j, body_len, slot, kk
    integer(c_int) :: r_pool
    type(c_ptr) :: conn, res
    character(kind=c_char), target :: query_c(256)
    integer(c_int) :: n_rows, status
    character(len=256) :: val0, val1, val2, val3, val4
    integer :: row

    call c_f_pointer(arg_c, arg)
    fd = arg%client_fd
    deallocate(arg)

    ! Read request
    nread = c_read(fd, c_loc(buf), 4095_c_int)
    if (nread <= 0) then
      r2: block; integer(c_int) :: rx; rx = c_close(fd); end block r2
      return
    end if
    req = ''
    do i = 1, nread
      req(i:i) = buf(i)
    end do

    ! Extract path from "GET /xxx HTTP/"
    path = '/'
    find_path: block
      integer :: sp1, sp2
      sp1 = index(req(1:nread), ' ')
      if (sp1 > 0 .and. sp1 < nread) then
        sp2 = index(req(sp1+1:nread), ' ')
        if (sp2 > 0) then
          path = req(sp1+1 : sp1+sp2-1)
        end if
      end if
    end block find_path

    path = trim(path)

    ! Route
    if (path == '/') then
      body = '{"message":"Hello, World!"}'
      body_len = len_trim(body)

    else if (path == '/orders') then
      ! Acquire a free pool slot (block until one is available)
      slot = 0
      do
        r_pool = pthread_mutex_lock(c_loc(pool_mutex_buf))
        do kk = 1, POOL_SIZE
          if (pool_inuse(kk) == 0) then
            slot = kk
            pool_inuse(kk) = 1_c_int
            exit
          end if
        end do
        if (slot > 0) exit
        r_pool = pthread_cond_wait(c_loc(pool_cond_buf), c_loc(pool_mutex_buf))
      end do
      conn = pool_conns(slot)
      r_pool = pthread_mutex_unlock(c_loc(pool_mutex_buf))

      call f_to_c_str( &
        'SELECT id, customer_id, total_cents, status, ' // &
        'created_at::text FROM orders LIMIT 100 OFFSET 1000', &
        query_c)
      res = PQexec(conn, query_c)
      status = PQresultStatus(res)
      if (status == PGRES_TUPLES_OK) then
        n_rows = PQntuples(res)
        body = '['
        body_len = 1
        do row = 0, n_rows - 1
          val0 = c_ptr_to_f_str(PQgetvalue(res, int(row,c_int), 0_c_int))
          val1 = c_ptr_to_f_str(PQgetvalue(res, int(row,c_int), 1_c_int))
          val2 = c_ptr_to_f_str(PQgetvalue(res, int(row,c_int), 2_c_int))
          val3 = c_ptr_to_f_str(PQgetvalue(res, int(row,c_int), 3_c_int))
          val4 = c_ptr_to_f_str(PQgetvalue(res, int(row,c_int), 4_c_int))
          if (row > 0) then
            body(body_len+1:body_len+1) = ','
            body_len = body_len + 1
          end if
          block
            character(len=512) :: obj
            integer :: olen
            obj = '{"id":' // trim(val0) // &
                  ',"customer_id":' // trim(val1) // &
                  ',"total_cents":' // trim(val2) // &
                  ',"status":"' // trim(val3) // '"' // &
                  ',"created_at":"' // trim(val4) // '"}'  
            olen = len_trim(obj)
            body(body_len+1:body_len+olen) = obj(1:olen)
            body_len = body_len + olen
          end block
        end do
        body(body_len+1:body_len+1) = ']'
        body_len = body_len + 1
      else
        body = '[]'
        body_len = 2
      end if
      call PQclear(res)

      ! Release slot back to pool
      r_pool = pthread_mutex_lock(c_loc(pool_mutex_buf))
      pool_inuse(slot) = 0_c_int
      r_pool = pthread_cond_signal(c_loc(pool_cond_buf))
      r_pool = pthread_mutex_unlock(c_loc(pool_mutex_buf))
    else
      ! 404
      block
        character(len=128), target :: h404
        h404 = "HTTP/1.1 404 Not Found" // char(13) // char(10) // &
               "Content-Length: 0" // char(13) // char(10) // &
               "Connection: close" // char(13) // char(10) // &
               char(13) // char(10)
        i = len_trim(h404)
        j = c_write(fd, c_loc(h404), int(i, c_int))
      end block
      i = c_close(fd)
      return
    end if

    ! Build HTTP response
    block
      character(len=32) :: len_str
      character(len=64), target :: hdr1, hdr2
      integer :: hw, bw
      write(len_str, '(I0)') body_len
      hdr1 = "HTTP/1.1 200 OK" // char(13) // char(10) // &
             "Content-Type: application/json" // char(13) // char(10)
      hdr2 = "Content-Length: " // trim(len_str) // char(13) // char(10) // &
             "Connection: close" // char(13) // char(10) // &
             char(13) // char(10)
      hw = c_write(fd, c_loc(hdr1), int(len_trim(hdr1), c_int))
      hw = c_write(fd, c_loc(hdr2), int(len_trim(hdr2), c_int))
      block
        character(kind=c_char), target :: cbody(body_len)
        integer :: k
        do k = 1, body_len
          cbody(k) = body(k:k)
        end do
        bw = c_write(fd, c_loc(cbody), int(body_len, c_int))
      end block
    end block

    i = c_close(fd)
  end subroutine handle_client

end program server
