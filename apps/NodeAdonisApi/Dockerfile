FROM node:22-alpine AS build
WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .
RUN npm run build

FROM node:22-alpine
WORKDIR /app

COPY --from=build /app/build ./
RUN npm install --omit=dev

EXPOSE 8000

CMD ["node", "bin/server.js"]
