FROM oven/bun:1-alpine AS builder

WORKDIR /app

COPY package.json ./
RUN bun install

COPY tsconfig.json ./
COPY src ./src
RUN bunx tsc -p tsconfig.json

FROM oven/bun:1-alpine

WORKDIR /app

COPY package.json ./
RUN bun install --production

COPY --from=builder /app/dist ./dist

EXPOSE 8000

CMD ["bun", "run", "dist/main.js"]
