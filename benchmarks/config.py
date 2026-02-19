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
    "postgresql_orders": TestType(
        name="postgresql_orders",
        path="/postgresql/orders",
        label="PostgreSQL Orders",
        description="PostgreSQL query returning 100 orders with LIMIT/OFFSET",
    ),
    "mongodb_orders": TestType(
        name="mongodb_orders",
        path="/mongodb/orders",
        label="MongoDB Orders",
        description="MongoDB query returning 100 orders with skip/limit",
    ),
}


# ── Service registry ─────────────────────────────────────────────────────────
# Maps docker-compose service name → Service metadata.
# Order here determines display order in summary tables.
SERVICES: dict[str, Service] = {
    s.name: s
    for s in [
        Service("litestar", 8000, "Python Litestar", "PythonLitestar"),
        Service("dotnetapi", 8001, ".NET API", "DotNetApi"),
        Service("bunapi", 8002, "Bun API", "BunApi"),
        Service("fastifyapi", 8003, "Fastify API", "FastifyApi"),
        Service("fastapi", 8004, "Python FastAPI", "PythonFastApi"),
        Service("rustactix", 8005, "Rust Actix", "RustActix"),
        Service("haskellservant", 8006, "Haskell Servant", "HaskellServant"),
        Service("elixirphoenix", 8007, "Elixir Phoenix", "ElixirPhoenix"),
        Service("gofiber", 8008, "Go Fiber", "GoFiber"),
        Service("javaspringboot", 8009, "Java Spring Boot", "JavaSpringBoot"),
        Service("erlangcowboy", 8010, "Erlang Cowboy", "ErlangCowboy"),
        Service("denoapi", 8011, "Deno API", "DenoApi"),
        Service("swiftvapor", 8012, "Swift Vapor", "SwiftVapor"),
        Service("dotnetapiaot", 8013, ".NET AOT", "DotNetApiAot"),
        Service("expressapi", 8014, "Express API", "ExpressApi"),
        Service("rubyrails", 8015, "Ruby Rails", "RubyRails"),
        Service("djangoapi", 8016, "Django API", "DjangoApi"),
        Service("cppdrogon", 8017, "C++ Drogon", "CppDrogon"),
        Service("cmicrohttpd", 8018, "C Microhttpd", "CMicrohttpd"),
    ]
}


# ── Monitoring services ────────────────────────────────────────────────────
# docker-compose service names that make up the monitoring stack.
MONITORING_SERVICES: list[str] = [
    "prometheus",
    "postgres_exporter",
    "mongodb_exporter",
    "cadvisor",
    "grafana",
]


def result_path(service: Service, test_type: TestType) -> Path:
    """Return the markdown result file path for a service + test combo.

    Example: results/PythonLitestar/HelloWorld.md
    """
    test_part = test_type.label.replace(" ", "")
    return RESULTS_DIR / service.dir_name / f"{test_part}.md"
