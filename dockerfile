FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --silent

COPY . .

EXPOSE 8080

CMD [ "npm", "build", "serve" ]
