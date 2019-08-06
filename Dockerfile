FROM node:12.7.0-alpine as build-deps
EXPOSE 8000
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn
COPY . ./
RUN yarn build
RUN npm install
