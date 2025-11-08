FROM node:22-alpine

WORKDIR /app

COPY package.json package-lock.json* ./
RUN npm ci --only=production

COPY . .

EXPOSE 8000

CMD ["node", "src/index.js"]
