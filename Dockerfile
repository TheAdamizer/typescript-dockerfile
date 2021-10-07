FROM node:16.10.0-alpine3.12

ENV PATH $PATH:/usr/lib/node_modules/bin
RUN npm install -g typescript

COPY . /data

RUN apk update && rm -rf /var/cache/apk/*
RUN apk add docker-cli
