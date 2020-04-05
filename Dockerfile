ARG NODE_VERSION=12.16.1

FROM node:${NODE_VERSION}

WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]
