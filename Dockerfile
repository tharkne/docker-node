FROM node:16

# creates app directory in folder
WORKDIR /usr/src/app

# copies dependancies listed in package and package-lock files
COPY package*.json ./
# runs node package manager, which is included in the Docker image
RUN npm install

# Bundle app srouce
COPY . .

EXPOSE 4400

CMD ["node", "server.js"]