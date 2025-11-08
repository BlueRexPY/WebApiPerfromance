FROM denoland/deno:alpine-2.1.4

WORKDIR /app

COPY . .

RUN deno cache main.ts

EXPOSE 8000

CMD ["deno", "run", "--allow-net", "--allow-env", "main.ts"]
