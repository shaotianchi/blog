FROM node:8.11-alpine
WORKDIR /app
COPY . /app
npm install -g hexo-cli
RUN npm install --only=production
CMD hexo generate --deploy
