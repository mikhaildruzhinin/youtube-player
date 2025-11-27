FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5173

CMD ["sh", "-c", "./node_modules/.bin/vite --host 0.0.0.0"]
