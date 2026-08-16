FROM node:24-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@12.0.2

RUN npm ci --omit=dev

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]