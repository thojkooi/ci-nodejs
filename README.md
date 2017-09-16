# Gitlab CI - NodeJS

[![build status](https://gitlab.com/thojkooi/ci-nodejs/badges/master/build.svg)](https://gitlab.com/thojkooi/ci-nodejs/commits/master)

Pre-build image containing NodeJS and various additional nodejs packages to save having to install those during pipeline builds. Image is based on [Alpine Node](https://github.com/mhart/alpine-node) by mhart.

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
