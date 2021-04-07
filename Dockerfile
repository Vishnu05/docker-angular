FROM node:15-alpine

WORKDIR /app

COPY package.json ./

RUN npm install

COPY ./ ./

RUN npm install -g @angular/cli

RUN ng build --prod

RUN npm install -g http-server