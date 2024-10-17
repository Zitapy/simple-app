# Use the official Node.js image from Docker Hub
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the application dependencies inside the container
RUN npm install

# Copy the application code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]
