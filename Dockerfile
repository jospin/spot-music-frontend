FROM node:16-alpine3.18 AS build
WORKDIR /app_frontend
COPY package*.json ./
RUN yarn install
COPY . . 
RUN npm run build
EXPOSE 3000

CMD [ "yarm", "dev"]