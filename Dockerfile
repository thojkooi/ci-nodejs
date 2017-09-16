FROM mhart/alpine-node:8.5.0

RUN apk add --no-cache git openssh && npm i -g mocha grunt bower nyc jshint eslint htmlhint notes npm-dview snazzy nsp js-yaml
