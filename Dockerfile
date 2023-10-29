# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of your app source code
COPY . .

# Expose port 3000 for the app
EXPOSE 3000

# Define the command to start your Node.js app
CMD [ "node", "app.js" ]
