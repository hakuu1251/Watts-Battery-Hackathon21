FROM node:8.17.0-jessie

MAINTAINER reOiL <imig3001@yandex.ru>

COPY . /app
WORKDIR /app

RUN npm install
RUN npm run build
RUN cp dist /web-data/front/