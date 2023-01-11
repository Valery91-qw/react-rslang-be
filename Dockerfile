ARG JWT_REFRESH_SECRET_KEY
ARG JWT_SECRET_KEY
ARG MONGO_CONNECTION_STRING
ARG PORT

FROM node:18-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm install

COPY . /usr/src/app/

EXPOSE 3000

CMD ["npm", "run", "start"]