# syntax=docker/dockerfile:1

FROM node:14-alpine
ENV NODE_ENV=production
WORKDIR /app
COPY package.json ./
RUN yarn install
COPY . ./
EXPOSE 3000
CMD ["yarn", "dev"]
