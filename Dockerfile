# Using the official Node.js runtime as a parent image
FROM node:22-alpine

# set the working directory in the container
WORKDIR /app

# copy package.json and package-lock.json to the working directory
COPY package*.json ./

#install dependencies
RUN npm install

# Copy rest of the application code
COPY . .

# Expose the port the app runs on:
EXPOSE 3000

# RUN the application 
CMD [ "node", "app.js" ]

