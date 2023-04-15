FROM node:14.21.3-alpine3.17

WORKDIR /app

COPY package.json ./

RUN npm install --silent

COPY . .

RUN npm run build

EXPOSE 3001

CMD ["npm", "run", "start"]