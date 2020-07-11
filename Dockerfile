FROM node:12.18.2-alpine3.12

ENV PATH $PATH:/usr/lib/node_modules/bin
RUN npm install -g typescript typings
RUN typings install dt~node --global
RUN mkdir -p /srv/typescript

COPY . /data

RUN apk update && rm -rf /var/cache/apk/*

CMD ["echo", "hello, world"]