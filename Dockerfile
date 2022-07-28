FROM node:10
WORKDIR /index
COPY package*.json ./
RUN npm install
COPY . .
ENV APP_PORT 5000
EXPOSE 5000
CMD [ "node", "index.js" ]