FROM node:9-slim
WORKDIR /app

COPY package.json /app
RUN yarn install

COPY . /app

CMD [ "npm", "start" ]