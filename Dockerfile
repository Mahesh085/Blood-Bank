FROM node:23-alphine as Application
WORKDIR /BB-APP
COPY package*.json ./
RUN npm install
COPY . .
CMD npm start

FROM Application as BB-App
RUN npm install --production
COPY . .
CMD npm start
