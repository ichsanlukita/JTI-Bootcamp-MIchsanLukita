FROM node:18.7.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# command to run on container start
CMD ["node", "index.js"]
