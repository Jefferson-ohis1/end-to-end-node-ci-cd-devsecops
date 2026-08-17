FROM node:24-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install -g npm@12.0.2 --ignore-scripts \
    && npm ci --omit=dev --ignore-scripts

COPY . .

CMD ["node", "server.js"]