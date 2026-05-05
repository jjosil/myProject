FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ['node', 'server.js']


# This Dockerfile creates a Node.js container. Here's what each line does:

# - `FROM node:18` - Uses Node.js version 18 as the base image
# - `WORKDIR /app` - Sets the working directory inside the container
# - `COPY package*.json ./` - Copies package.json and package-lock.json (if it exists) to the container
# - `RUN npm install` - Installs dependencies
# - `COPY . .` - Copies the rest of your application files into the container
# - `CMD ['node', 'server.js']` - Runs your Node.js server when the container starts
