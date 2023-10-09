# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Create or generate the package.json file
RUN echo '{' \
    '"name": "my-app",' \
    '"version": "1.0.0",' \
    '"description": "My Dockerized Node.js App",' \
    '"main": "app.js",' \
    '"scripts": {' \
        '"start": "node app.js"' \
    '},' \
    '"author": "Your Name",' \
    '"license": "MIT"' \
    '}' > package.json

# Copy the rest of the application source code to the container
COPY . .

# Expose a port (if your app listens on a specific port)
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]
