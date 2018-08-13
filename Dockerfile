FROM node:10.8.0-alpine

RUN apk add --no-cache git openssh && npm i -g mocha grunt bower nyc jshint eslint htmlhint notes npm-dview snazzy js-yaml
