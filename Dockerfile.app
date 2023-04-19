FROM node:14.21.3-slim

COPY package.json /usr/share/nginx/html

RUN npm install --silent

COPY . /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

RUN npm run build