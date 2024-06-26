# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory
WORKDIR /user/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

EXPOSE 3000