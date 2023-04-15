FROM node:13-alpine

ENV MONGO_DB_USERNAME=root \
    MONGO_DB_PWD=Chaugnars2

RUN mkdir -p /home/app

COPY ./app /home/my-app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/my-app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

