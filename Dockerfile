# Use node base image
FROM node:18

# Set app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the app
COPY . .

# Run the app
CMD ["npm", "start"]
