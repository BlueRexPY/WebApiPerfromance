FROM node:22-alpine

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci --omit=dev

COPY . .

EXPOSE 8000
EXPOSE 9000

CMD ["node", "src/index.js"]
