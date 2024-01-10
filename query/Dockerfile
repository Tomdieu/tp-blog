FROM node:alpine
LABEL authors="ivantom"

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 4002

ENTRYPOINT ["npm", "start"]