FROM node:14.16.0-alpine3.13
WORKDIR /app
RUN addgroup app && adduser -S -G app app && chown -R app /app
USER app
COPY package*.json ./
RUN npm install
COPY . . 
EXPOSE 3001

CMD ["npm", "start"]