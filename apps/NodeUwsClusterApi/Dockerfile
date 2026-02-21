FROM node:22-slim AS deps

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

COPY package.json ./
RUN git config --global url."https://github.com/".insteadOf "ssh://git@github.com/" && \
    npm install --omit=dev

# ── Runtime stage ──────────────────────────────────────────────────────────────
FROM node:22-slim

WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules
COPY src ./src

EXPOSE 8000

CMD ["node", "src/index.mjs"]
