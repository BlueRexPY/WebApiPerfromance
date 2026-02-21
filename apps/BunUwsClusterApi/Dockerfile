FROM oven/bun:1-slim AS deps

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

COPY package.json ./
RUN git config --global url."https://github.com/".insteadOf "ssh://git@github.com/" && \
    bun install --production

# ── Runtime stage ──────────────────────────────────────────────────────────────
FROM oven/bun:1-slim

WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules
COPY src ./src

EXPOSE 8000

CMD ["bun", "run", "src/index.mjs"]
