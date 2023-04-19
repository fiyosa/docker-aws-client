FROM node:14.21.3-slim

WORKDIR /app

COPY package.json ./

RUN npm install --silent

COPY . .

RUN npm run build
