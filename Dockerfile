FROM node:18-alpine

ENV TZ=Asia/Tokyo

ENV APP_ROOT /app

RUN mkdir -p ${APP_ROOT}

WORKDIR ${APP_ROOT}

COPY package*.json ${APP_ROOT}/

RUN apk update && apk add --no-cache \
        tzdata \
 && npm install

COPY . ${APP_ROOT}
