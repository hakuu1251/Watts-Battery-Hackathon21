FROM node:8.17.0-jessie

MAINTAINER reOiL <imig3001@yandex.ru>

COPY . /app
WORKDIR /app
RUN chmod +x ent.sh


ENTRYPOINT ["/app/ent.sh"]
