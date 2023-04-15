FROM node:14.21.3-alpine3.17 AS builder

WORKDIR /app

COPY package.json ./

RUN npm install --silent

COPY . .

RUN npm run build

# CMD ["npm", "run", "start"]

FROM nginx:stable-alpine

COPY --from=builder /app/build /usr/share/nginx/html

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 3001
