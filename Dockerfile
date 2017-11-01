FROM node:8.9.0-alpine

RUN apk add --no-cache git openssh && npm i -g mocha grunt bower nyc jshint eslint htmlhint notes npm-dview snazzy nsp js-yaml
