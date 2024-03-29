FROM node:16-alpine
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY ./ ./
RUN npx tsc 

EXPOSE 3000
CMD ["node", "./dist/app.js"]