FROM node:alpine3.18

WORKDIR /frontend

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "run", "serve"]