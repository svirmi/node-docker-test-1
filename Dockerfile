FROM node:11
WORKDIR /app

COPY package.json /app
RUN yarn install

COPY . /app

CMD [ "npm", "start" ]