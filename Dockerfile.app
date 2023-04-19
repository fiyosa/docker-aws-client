FROM node:14.21.3-slim

WORKDIR /app

# COPY package.json ./

COPY . .

RUN npm install --silent

RUN npm run build
