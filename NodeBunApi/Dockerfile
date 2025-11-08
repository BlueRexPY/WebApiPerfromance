FROM oven/bun:1-alpine

WORKDIR /app

COPY package.json bun.lockb* ./
RUN bun install --frozen-lockfile --production

COPY . .

EXPOSE 8000

CMD ["bun", "run", "src/index.ts"]
