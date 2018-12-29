FROM node:8.11-alpine
WORKDIR /app
COPY . /app
RUN npm install -g hexo-cli
RUN npm install --only=production
RUN hexo generate 

FROM nginx
COPY --from=0 /usr/src/app/public /usr/share/nginx/html
EXPOSE 80
