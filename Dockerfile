FROM node:lts-alpine

WORKDIR /app

COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock

RUN yarn install

COPY . .

EXPOSE 8080
CMD [ "yarn", "serve" ]