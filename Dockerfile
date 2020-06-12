FROM node:alpine3.12

WORDIR /app

COPY package.json ./

COPY package-lock.json ./

RUN npm install  --production

COPY . ./app

CMD ["npm", "start"]