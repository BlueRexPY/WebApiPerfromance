FROM oven/bun:1-alpine AS build
WORKDIR /app

COPY package.json ./
RUN bun install

COPY . .
RUN bun run build

FROM oven/bun:1-alpine
WORKDIR /app

COPY --from=build /app/.output ./

EXPOSE 8000

CMD ["bun", "server/index.mjs"]
