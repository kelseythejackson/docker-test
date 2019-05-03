FROM node:7

WORKDIR /usr/src/app

COPY app/ app/
COPY config/ config/
COPY public/ public/
COPY tests/ tests/
COPY vendor/ vendor/
COPY .editorconfig .editorconfig
COPY .ember-cli .ember-cli
COPY .eslintrc.js .eslintrc.js
COPY .gitignore .gitignore
COPY .travis.yml .travis.yml
COPY .watchmanconfig .watchmanconfig
COPY ember-cli-build.js ember-cli-build.js
COPY jsconfig.json jsconfig.json
COPY package.json package.json
COPY README.md README.md
COPY testem.js testem.js

RUN npm install

EXPOSE 4200

ENTRYPOINT [ "ember", "s" ]