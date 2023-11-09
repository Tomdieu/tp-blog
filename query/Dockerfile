FROM node:alpine
LABEL authors="ivantom"

WORKDIR /app

COPY package*.json .

RUN npm install

EXPOSE 4001

ENTRYPOINT ["npm", "start"]

