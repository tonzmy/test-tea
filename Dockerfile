FROM node:alpine3.12

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install  --production

COPY . ./app

CMD ["npm", "start"]