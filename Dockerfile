# Use an official Node.js image as the base image
FROM node:16-slim

# Create a directory for your application in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose the port your application will run on
EXPOSE 3000

# Define the command to start your application
CMD ["npm", "start"]
