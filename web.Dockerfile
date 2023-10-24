FROM node:17.8 as build-stage

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# EXPOSE 8080
RUN npm run build

# CMD ["npm", "run", "serve"]

# Production Stage
FROM nginx:stable-alpine as production

WORKDIR /app/dist

COPY --from=build-stage /app/dist .

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN echo "daemon off;">>/etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]