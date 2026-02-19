cmake_minimum_required(VERSION 3.16)
project(cpp-drogon-api CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")

find_package(Drogon CONFIG REQUIRED)
find_package(PkgConfig REQUIRED)
pkg_check_modules(MONGOC REQUIRED libmongoc-1.0)

add_executable(${PROJECT_NAME} main.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE ${MONGOC_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} PRIVATE Drogon::Drogon ${MONGOC_LIBRARIES})
target_compile_options(${PROJECT_NAME} PRIVATE ${MONGOC_CFLAGS_OTHER})
