FROM node:alpine
LABEL authors="ivantom"

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm","start"]


# RUN npm run build

# EXPOSE 80

# FROM nginx
# WORKDIR /usr/share/nginx/html
# RUN rm -rf ./*
# COPY --from=builder /app/build .
# ENTRYPOINT [ "nginx", "-g", "daemon off;" ]