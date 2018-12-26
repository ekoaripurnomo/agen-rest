FROM node:7
LABEL maintainer="eko<eko.ap@hanoman.co.id>"

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /app

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY ./src /app/src

EXPOSE 3000
CMD [ "npm", "start" ]