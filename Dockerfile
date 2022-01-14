FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

ARG ENV

RUN if [ "$ENV" = "production" ] ; then npm install --only=production; else npm install --dev; fi

# Bundle app source
COPY . .

CMD [ "node", "index.js" ]