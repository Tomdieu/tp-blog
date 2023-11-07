FROM node:lts-slim
LABEL authors="ivantom"

WORKDIR /app

COPY package*.json .

RUN npm install

EXPOSE 4005

ENTRYPOINT ["npm", "start"]

