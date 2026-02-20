cmake_minimum_required(VERSION 3.16)
project(clibuv C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS_RELEASE "-O3 -DNDEBUG")

find_package(PkgConfig REQUIRED)
pkg_check_modules(LIBUV REQUIRED libuv)
pkg_check_modules(LIBPQ REQUIRED libpq)

add_executable(clibuv main.c)

target_include_directories(clibuv PRIVATE
    ${LIBUV_INCLUDE_DIRS}
    ${LIBPQ_INCLUDE_DIRS}
)

target_link_libraries(clibuv
    ${LIBUV_LIBRARIES}
    ${LIBPQ_LIBRARIES}
    pthread
)

target_compile_options(clibuv PRIVATE
    ${LIBUV_CFLAGS_OTHER}
    ${LIBPQ_CFLAGS_OTHER}
)
