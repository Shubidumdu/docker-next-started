# syntax=docker/dockerfile:1

FROM node:14-alpine
WORKDIR /app
COPY package.json .
RUN yarn install
COPY . .
RUN yarn build
EXPOSE 3000
CMD ["yarn", "start"]
