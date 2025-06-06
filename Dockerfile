FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

RUN npm install -g nodemon

COPY package*.json /usr/src/app/

RUN npm install

COPY . /usr/src/app/
RUN mkdir -p /usr/src/app/uploads


EXPOSE 80 443

CMD ["npm", "start"]