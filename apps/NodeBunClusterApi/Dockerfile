FROM oven/bun:1-alpine

WORKDIR /app

COPY package.json ./
RUN bun install --production

COPY . .

EXPOSE 8000
EXPOSE 9000

CMD ["bun", "run", "src/index.ts"]
