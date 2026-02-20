"""Service registry and test type definitions.

Central configuration for all services and benchmark test types.
Adding a new service or test type is as simple as adding an entry here.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

# ── Paths ──────────────────────────────────────────────────────────────────────
PROJECT_ROOT = Path(__file__).resolve().parent.parent
RESULTS_DIR = PROJECT_ROOT / "results"
COMPOSE_FILE = PROJECT_ROOT / "docker-compose.yml"


# ── Data classes ───────────────────────────────────────────────────────────────
@dataclass(frozen=True)
class Service:
    """A docker-compose service that exposes an HTTP API."""

    name: str  # docker-compose service name
    port: int  # host port
    display_name: str  # human-readable label for reports
    dir_name: str = ""  # results subdirectory name (e.g. "PythonLitestar")


@dataclass(frozen=True)
class TestType:
    """A benchmark test scenario."""

    name: str  # identifier, e.g. "hello_world"
    path: str  # HTTP path, e.g. "/"
    label: str  # human label, e.g. "Hello World"
    description: str = ""  # optional extra context for reports


@dataclass(frozen=True)
class WrkConfig:
    """wrk load-testing parameters."""

    threads: int = 2
    connections: int = 120
    duration_seconds: int = 20

    @property
    def duration_flag(self) -> str:
        return f"{self.duration_seconds}s"


# ── Default wrk settings ──────────────────────────────────────────────────────
DEFAULT_WRK = WrkConfig()


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
}


# ── Service registry ─────────────────────────────────────────────────────────
# Maps docker-compose service name → Service metadata.
# Order here determines display order in summary tables.
SERVICES: dict[str, Service] = {
    s.name: s
    for s in [
        Service("litestar", 8000, "Python Litestar", "PythonLitestar"),
        Service("dotnetapi", 8001, "C# .NET API", "DotNetApi"),
        Service("bunapi", 8002, "JS Bun", "BunApi"),
        Service("fastifyapi", 8003, "JS Fastify", "FastifyApi"),
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
        Service("expressapi", 8014, "JS Express", "ExpressApi"),
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
        Service("nestjsexpress", 8029, "JS NestJS Express", "NestJsExpress"),
        Service("nestjsfastify", 8030, "JS NestJS Fastify", "NestJsFastify"),
        Service("clibuv", 8031, "C libuv", "CLibuv"),
        Service("gonethttp", 8032, "Go net/http", "GoNetHttp"),
        Service("rubysinatra", 8033, "Ruby Sinatra", "RubySinatra"),
        Service("elixirplug", 8034, "Elixir Plug", "ElixirPlug"),
        Service("dotnetcarter", 8035, "C# Carter", "DotNetCarter"),
        Service("dotnetcarteraot", 8036, "C# Carter AOT", "DotNetCarterAot"),
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
