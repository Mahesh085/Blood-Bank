FROM node:23-alpine as application
WORKDIR /BB-APP
COPY package*.json ./
RUN npm install
COPY . .
CMD npm start

FROM application as bb-app
RUN npm install --production
COPY . .
CMD npm start
