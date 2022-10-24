FROM node:16-alpine

WORKDIR /app/

COPY package-lock.json /app/
COPY package.json /app/

RUN npm install --save --legacy-peer-deps

COPY . /app/

CMD npm run start:dev