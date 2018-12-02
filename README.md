# Gitlab CI - NodeJS

[![build status](https://gitlab.com/thojkooi/ci-nodejs/badges/master/build.svg)](https://gitlab.com/thojkooi/ci-nodejs/commits/master) [![Docker Build Statu](https://img.shields.io/docker/build/thojkooi/ci-nodejs.svg)](https://hub.docker.com/r/thojkooi/ci-nodejs/) [![Docker hub](https://img.shields.io/docker/pulls/thojkooi/ci-nodejs.svg)](https://hub.docker.com/r/thojkooi/ci-nodejs/)

Pre-build image containing NodeJS and various additional nodejs packages to save having to install those during pipeline builds.

## Available tools

- mocha
- grunt
- bower
- nyc
- jshint
- eslint
- htmlhint
- notes
- npm-dview
- snazzy
- nsp
- js-yaml

## Usage

In gitlab-ci:

```yaml
unit-tests:
    stage: test
    image: registry.gitlab.com/thojkooi/ci-nodejs
    before_script:
      - npm install
    script:
      - mocha
      - eslint .
```
