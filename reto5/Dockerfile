FROM node:16

WORKDIR /usr/src/app

COPY hello-bootcamp/. ./

RUN npm install express

RUN npm install -g npm@8.16.0

EXPOSE 4000

CMD [ "node", "server.js" ]