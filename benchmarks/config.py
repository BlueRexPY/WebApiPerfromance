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
        Service("litestar", 8000, "Python Litestar"),
        Service("dotnetapi", 8001, ".NET API"),
        Service("bunapi", 8002, "Bun API"),
        Service("fastifyapi", 8003, "Fastify API"),
        Service("fastapi", 8004, "Python FastAPI"),
        Service("rustactix", 8005, "Rust Actix"),
        Service("haskellservant", 8006, "Haskell Servant"),
        Service("elixirphoenix", 8007, "Elixir Phoenix"),
        Service("gofiber", 8008, "Go Fiber"),
        Service("javaspringboot", 8009, "Java Spring Boot"),
        Service("erlangcowboy", 8010, "Erlang Cowboy"),
        Service("denoapi", 8011, "Deno API"),
        Service("swiftvapor", 8012, "Swift Vapor"),
        Service("dotnetapiaot", 8013, ".NET AOT"),
        Service("expressapi", 8014, "Express API"),
        Service("rubyrails", 8015, "Ruby Rails"),
        Service("djangoapi", 8016, "Django API"),
        Service("cppdrogon", 8017, "C++ Drogon"),
    ]
}


def result_path(service: Service, test_type: TestType) -> Path:
    """Return the markdown result file path for a service + test combo.

    Example: results/DotNetApiAot.HelloWorld.md
    """
    # Convert display name to PascalCase-ish filename segment
    svc_part = (
        service.display_name.replace(" ", "").replace(".", "").replace("+", "Plus")
    )
    test_part = test_type.label.replace(" ", "")
    return RESULTS_DIR / f"{svc_part}.{test_part}.md"
