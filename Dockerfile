# Dockerfile

# base image
FROM node:18-alpine3.18

# create & set working directory
RUN mkdir -p /usr/blockmeta
WORKDIR /usr/blockmeta

# copy source files
COPY package.json /usr/blockmeta/

# install dependencies
RUN yarn install

COPY src/ /usr/blockmeta/src/

CMD ["node", "src/index.js"]
