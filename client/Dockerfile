FROM node:alpine
LABEL authors="ivantom"

ENV CI=true
ENV WDS_SOCKET_PORT=0

WORKDIR /app

RUN npm install -g npm@10.2.5

COPY package*.json .

RUN npm install --force

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm","start"]
