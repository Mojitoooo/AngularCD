#stage 1
FROM node:16.18.1 as node
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod
#stage 2
FROM nginx:alpine
COPY --from=node /app/dist/* /usr/share/nginx/html
CMD [ "nginx","-g","daemon off;" ]
EXPOSE 80