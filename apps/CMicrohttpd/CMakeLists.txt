cmake_minimum_required(VERSION 3.16)
project(capi C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Release flags
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()
set(CMAKE_C_FLAGS_RELEASE "-O3 -pipe -fomit-frame-pointer")

find_package(PkgConfig REQUIRED)
pkg_check_modules(MHD REQUIRED libmicrohttpd)
pkg_check_modules(PQ  REQUIRED libpq)

add_executable(capi main.c)

target_include_directories(capi PRIVATE
    ${MHD_INCLUDE_DIRS}
    ${PQ_INCLUDE_DIRS}
)

target_link_libraries(capi
    ${MHD_LIBRARIES}
    ${PQ_LIBRARIES}
    pthread
)

target_compile_options(capi PRIVATE
    ${MHD_CFLAGS_OTHER}
    ${PQ_CFLAGS_OTHER}
    -Wall -Wextra
)
