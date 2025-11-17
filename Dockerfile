FROM node

WORKDIR /app

COPY package.json .

RUN npm install 

COPY . .

EXPOSE 80

## Create a volume to persist feedback data
# VOLUME ["/app/feedback"]

## Create a volume to persist node_modules
# VOLUME ["/app/node_modules"]


CMD [ "node", "server.js" ]