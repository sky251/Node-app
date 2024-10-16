# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app 

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to the host machine
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
