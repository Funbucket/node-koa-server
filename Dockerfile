FROM node:10.14

WORKDIR /deploy/node-koa-server

COPY package.json ./

COPY ./start-server.sh /usr/local/bin

RUN ln -s /usr/local/bin/start-server.sh /start-server.sh

CMD ["start-server.sh"]