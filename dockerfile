# Use an official Node.js runtime as the base image
FROM node:20.12.2-alpine

# Set the working directory in the container
WORKDIR /first-project

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the React app
RUN npm run build

# Expose port 80 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
