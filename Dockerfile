FROM node

WORKDIR /app

COPY package.json .

RUN npm install 

COPY . .

EXPOSE 80

## Create a volume to persist feedback data
VOLUME ["/app/feedback"]


CMD [ "node", "server.js" ]