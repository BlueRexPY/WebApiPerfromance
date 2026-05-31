"""Service registry and test type definitions.

Central configuration for all services and benchmark test types.
Adding a new service or test type is as simple as adding an entry here.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

PROJECT_ROOT = Path(__file__).resolve().parent.parent
RESULTS_DIR = PROJECT_ROOT / "results"
COMPOSE_FILE = PROJECT_ROOT / "docker-compose.yml"


@dataclass(frozen=True)
class Service:
    """A docker-compose service that exposes an HTTP API."""

    name: str  # docker-compose service name
    port: int  # host port
    display_name: str  # human-readable label for reports
    dir_name: str = ""  # results subdirectory name (e.g. "PythonLitestar")
    grpc_port: int = 0  # host port for gRPC (0 = gRPC not supported)


@dataclass(frozen=True)
class TestType:
    """A benchmark test scenario."""

    name: str  # identifier, e.g. "hello_world"
    path: str  # HTTP path, e.g. "/"
    label: str  # human label, e.g. "Hello World"
    description: str = ""  # optional extra context for reports
    tool: str = "wrk"  # "wrk" or "k6"
    ws_script: str = ""  # path relative to PROJECT_ROOT, used when tool == "k6"


@dataclass(frozen=True)
class WrkConfig:
    """wrk load-testing parameters."""

    threads: int = 2
    connections: int = 120
    duration_seconds: int = 20

    @property
    def duration_flag(self) -> str:
        return f"{self.duration_seconds}s"


DEFAULT_WRK = WrkConfig()


@dataclass(frozen=True)
class K6Config:
    """k6 WebSocket load-testing parameters."""

    vus: int = 120
    duration_seconds: int = 20

    @property
    def duration_flag(self) -> str:
        return f"{self.duration_seconds}s"


DEFAULT_K6 = K6Config()


# ── Test types registry ───────────────────────────────────────────────────────
# Add new test types here. Each entry becomes a selectable benchmark.
TEST_TYPES: dict[str, TestType] = {
    "hello_world": TestType(
        name="hello_world",
        path="/",
        label="Hello World",
        description="Simple JSON response, no database",
    ),
    "orders": TestType(
        name="orders",
        path="/orders",
        label="Orders",
        description="Database query returning 100 orders with LIMIT/OFFSET",
    ),
    "ws_echo": TestType(
        name="ws_echo",
        path="/ws/echo",
        label="WS Echo",
        description="WebSocket echo — round-trip latency, no database",
        tool="k6",
        ws_script="benchmarks/ws/echo.js",
    ),
    "ws_orders": TestType(
        name="ws_orders",
        path="/ws/orders",
        label="WS Orders",
        description="WebSocket orders push — server streams 100 orders per message",
        tool="k6",
        ws_script="benchmarks/ws/orders.js",
    ),
    "sse_hello": TestType(
        name="sse_hello",
        path="/sse/hello",
        label="SSE Hello",
        description="Server-Sent Events hello — single event, no database",
    ),
    "sse_orders": TestType(
        name="sse_orders",
        path="/sse/orders",
        label="SSE Orders",
        description="Server-Sent Events orders — server streams 100 orders then closes",
    ),
    "grpc_hello": TestType(
        name="grpc_hello",
        path="/api.ApiService/SayHello",
        label="gRPC Hello",
        description="gRPC unary hello — no database",
        tool="grpc_k6",
        ws_script="benchmarks/grpc/hello.js",
    ),
    "grpc_orders": TestType(
        name="grpc_orders",
        path="/api.ApiService/GetOrders",
        label="gRPC Orders",
        description="gRPC unary orders — returns 100 orders from database",
        tool="grpc_k6",
        ws_script="benchmarks/grpc/orders.js",
    ),
}


# ── Service registry ─────────────────────────────────────────────────────────
# Maps docker-compose service name → Service metadata.
# Order here determines display order in summary tables.
SERVICES: dict[str, Service] = {
    s.name: s
    for s in [
        Service("litestar", 8000, "Python Litestar", "PythonLitestar"),
        Service("dotnetapi", 8001, "C# .NET API", "DotNetApi", grpc_port=9001),
        Service("bunapi", 8002, "JS Bun", "BunApi", grpc_port=9002),
        Service("fastifyapi", 8003, "JS Node Fastify", "FastifyApi"),
        Service("fastapi", 8004, "Python FastAPI", "PythonFastApi"),
        Service("rustactix", 8005, "Rust Actix", "RustActix"),
        Service("haskellservant", 8006, "Haskell Servant", "HaskellServant"),
        Service("elixirphoenix", 8007, "Elixir Phoenix", "ElixirPhoenix"),
        Service("gofiber", 8008, "Go Fiber", "GoFiber"),
        Service("javaspringboot", 8009, "Java Spring Boot", "JavaSpringBoot"),
        Service("erlangcowboy", 8010, "Erlang Cowboy", "ErlangCowboy"),
        Service("denoapi", 8011, "JS Deno", "DenoApi"),
        Service("swiftvapor", 8012, "Swift Vapor", "SwiftVapor"),
        Service("dotnetapiaot", 8013, "C# .NET AOT", "DotNetApiAot"),
        Service("expressapi", 8014, "JS Node Express", "ExpressApi", grpc_port=9014),
        Service("rubyrails", 8015, "Ruby Rails", "RubyRails"),
        Service("djangoapi", 8016, "Python Django", "DjangoApi"),
        Service("cppdrogon", 8017, "C++ Drogon", "CppDrogon"),
        Service("cmicrohttpd", 8018, "C Microhttpd", "CMicrohttpd"),
        Service("fsharpapi", 8019, "F# .NET API", "FSharpApi"),
        Service("fsharpapiaot", 8020, "F# .NET AOT", "FSharpApiAot"),
        Service("javaquarkus", 8021, "Java Quarkus", "JavaQuarkus"),
        Service("rustaxum", 8022, "Rust Axum", "RustAxum"),
        Service("gochi", 8023, "Go Chi", "GoChi"),
        Service("zigzap", 8024, "Zig zap", "ZigZap"),
        Service("javamicronaut", 8026, "Java Micronaut", "JavaMicronaut"),
        Service("kotlinktor", 8027, "Kotlin Ktor", "KotlinKtor"),
        Service("phpswoole", 8028, "PHP Swoole", "PhpSwoole"),
        Service("nestjsexpress", 8029, "JS Node NestJS Express", "NestJsExpress"),
        Service("nestjsfastify", 8030, "JS Node NestJS Fastify", "NestJsFastify"),
        Service("clibuv", 8031, "C libuv", "CLibuv"),
        Service("gonethttp", 8032, "Go net/http", "GoNetHttp"),
        Service("rubysinatra", 8033, "Ruby Sinatra", "RubySinatra"),
        Service("elixirplug", 8034, "Elixir Plug", "ElixirPlug"),
        Service("dotnetcarter", 8035, "C# Carter", "DotNetCarter"),
        Service("dotnetcarteraot", 8036, "C# Carter AOT", "DotNetCarterAot"),
        Service("dotnetefcoreaot", 8069, "C# EF Core AOT", "DotNetEfCoreAot"),
        Service("dotnetefcore", 8070, "C# EF Core", "DotNetEfCore"),
        Service("dotnetdapper", 8071, "C# Dapper", "DotNetDapper"),
        Service("dotnetcarterefcore", 8072, "C# Carter EF Core", "DotNetCarterEfCore"),
        Service("dotnetcarterdapper", 8073, "C# Carter Dapper", "DotNetCarterDapper"),
        Service(
            "dotnetcarteraotefcore",
            8074,
            "C# Carter AOT EF Core",
            "DotNetCarterAotEfCore",
        ),
        Service(
            "dotnetcarteraotdapper",
            8075,
            "C# Carter AOT Dapper",
            "DotNetCarterAotDapper",
        ),
        Service("fsharpefcore", 8076, "F# EF Core", "FSharpEfCore"),
        Service("fsharpdapper", 8077, "F# Dapper", "FSharpDapper"),
        Service("fsharpaotdapper", 8078, "F# AOT Dapper", "FSharpAotDapper"),
        Service("phplaravel", 8037, "PHP Laravel", "PhpLaravel"),
        Service("nodekoaapi", 8038, "JS Node Koa", "NodeKoaApi"),
        Service("nodehonoapi", 8039, "JS Node Hono", "NodeHonoApi"),
        Service("rubyfalcon", 8040, "Ruby Falcon", "RubyFalcon"),
        Service(
            "expressclusterapi",
            8041,
            "JS Node Express Cluster",
            "NodeExpressClusterApi",
            grpc_port=9041,
        ),
        Service(
            "fastifyclusterapi",
            8042,
            "JS Node Fastify Cluster",
            "NodeFastifyClusterApi",
        ),
        Service("honoclusterapi", 8043, "JS Node Hono Cluster", "NodeHonoClusterApi"),
        Service("koaclusterapi", 8044, "JS Node Koa Cluster", "NodeKoaClusterApi"),
        Service(
            "nestjsexpresscluster",
            8045,
            "JS Node NestJS Express Cluster",
            "NodeNestExpressClusterApi",
        ),
        Service(
            "nestjsfastifycluster",
            8046,
            "JS Node NestJS Fastify Cluster",
            "NodeNestFastifyClusterApi",
        ),
        Service(
            "bunclusterapi",
            8047,
            "JS Node Bun Cluster",
            "NodeBunClusterApi",
            grpc_port=9047,
        ),
        Service("denoparallelapi", 8048, "JS Deno Parallel", "NodeDenoParallelApi"),
        Service("bunexpressapi", 8049, "JS Bun Express", "NodeBunExpressApi"),
        Service("bunfastifyapi", 8050, "JS Bun Fastify", "NodeBunFastifyApi"),
        Service("bunhonoapi", 8051, "JS Bun Hono", "NodeBunHonoApi"),
        Service("bunkoaapi", 8052, "JS Bun Koa", "NodeBunKoaApi"),
        Service(
            "bunnestexpressapi",
            8053,
            "JS Bun NestJS Express",
            "NodeBunNestExpressApi",
        ),
        Service(
            "bunnestfastifyapi",
            8054,
            "JS Bun NestJS Fastify",
            "NodeBunNestFastifyApi",
        ),
        Service(
            "bunexpressclusterapi",
            8055,
            "JS Bun Express Cluster",
            "NodeBunExpressClusterApi",
        ),
        Service(
            "bunfastifyclusterapi",
            8056,
            "JS Bun Fastify Cluster",
            "NodeBunFastifyClusterApi",
        ),
        Service(
            "bunhonoclusterapi",
            8057,
            "JS Bun Hono Cluster",
            "NodeBunHonoClusterApi",
        ),
        Service(
            "bunkoaclusterapi",
            8058,
            "JS Bun Koa Cluster",
            "NodeBunKoaClusterApi",
        ),
        Service(
            "bunnestexpressclusterapi",
            8059,
            "JS Bun NestJS Express Cluster",
            "NodeBunNestExpressClusterApi",
        ),
        Service(
            "bunnestfastifyclusterapi",
            8060,
            "JS Bun NestJS Fastify Cluster",
            "NodeBunNestFastifyClusterApi",
        ),
        Service("crystalkemal", 8061, "Crystal Kemal", "CrystalKemal"),
        Service("crystallucky", 8062, "Crystal Lucky", "CrystalLucky"),
        Service("gleamapi", 8063, "Gleam Wisp", "GleamApi"),
        Service("uwsapi", 8064, "JS Node uWS", "NodeUwsApi"),
        Service("uwsclusterapi", 8068, "JS Node uWS Cluster", "NodeUwsClusterApi"),
        Service("springwebflux", 8065, "Java Spring WebFlux", "JavaSpringWebFlux"),
        Service("gogin", 8066, "Go Gin", "GoGin"),
        Service("pythonflask", 8067, "Python Flask", "PythonFlask"),
        Service("adaapi", 8079, "Ada (GNAT.Sockets)", "AdaApi"),
        Service("cobolapi", 8081, "COBOL GnuCOBOL", "CobolApi"),
        Service("pascalapi", 8082, "Pascal fpWeb", "PascalApi"),
        Service("fortranapi", 8083, "Fortran GFortran", "FortranApi"),
        Service("luaopenresty", 8084, "Lua OpenResty", "LuaOpenResty"),
        Service("dartshelf", 8085, "Dart Shelf", "DartShelf"),
        Service("bunelysiaapi", 8086, "JS Bun Elysia", "NodeBunElysiaApi"),
        Service(
            "bunelysiaclusterapi",
            8087,
            "JS Bun Elysia Cluster",
            "NodeBunElysiaClusterApi",
        ),
        Service("adonisapi", 8088, "JS Node AdonisJS", "NodeAdonisApi"),
        Service("nitroapi", 8089, "JS Node Nitro", "NodeNitroApi"),
        Service("bunadonisapi", 8090, "JS Bun AdonisJS", "NodeBunAdonisApi"),
        Service(
            "adonisclusterapi",
            8091,
            "JS Node AdonisJS Cluster",
            "NodeAdonisClusterApi",
        ),
        Service(
            "bunadonisclusterapi",
            8092,
            "JS Bun AdonisJS Cluster",
            "NodeBunAdonisClusterApi",
        ),
        Service(
            "nitroclusterapi",
            8093,
            "JS Node Nitro Cluster",
            "NodeNitroClusterApi",
        ),
        Service("bunnitroapi", 8094, "JS Bun Nitro", "NodeBunNitroApi"),
        Service(
            "bunnitroclusterapi",
            8095,
            "JS Bun Nitro Cluster",
            "NodeBunNitroClusterApi",
        ),
        Service("goechoapi", 8096, "Go Echo", "GoEcho"),
        Service("pythonblacksheep", 8097, "Python BlackSheep", "PythonBlackSheep"),
    ]
}


# ── Monitoring services ────────────────────────────────────────────────────
# docker-compose service names that make up the monitoring stack.
MONITORING_SERVICES: list[str] = [
    "prometheus",
    "postgres_exporter",
    "cadvisor",
    "grafana",
]


def result_path(service: Service, test_type: TestType) -> Path:
    """Return the markdown result file path for a service + test combo.

    Example: results/PythonLitestar/HelloWorld.md
    """
    test_part = test_type.label.replace(" ", "")
    return RESULTS_DIR / service.dir_name / f"{test_part}.md"
