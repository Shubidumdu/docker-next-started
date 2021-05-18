# syntax=docker/dockerfile:1

FROM node:14-alpine as base
WORKDIR /app
COPY package.json .
RUN yarn install
COPY . .

FROM base as dev
CMD ["yarn", "dev"]

FROM base as prod
RUN yarn build
CMD ["yarn", "start"]
