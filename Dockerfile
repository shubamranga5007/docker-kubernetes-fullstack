FROM node:10.23.0
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY server.js ./
EXPOSE 3001
CMD [ "npm", "run", "server" ]
