FROM node:latest

RUN mkdir -p /app/src

WORKDIR /apps/src

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5000

CMD ["npm", "start"]