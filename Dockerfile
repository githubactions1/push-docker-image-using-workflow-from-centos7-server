# Use the Base Image as Node.js
FROM tiangolo/node-frontend:16

# install pm2 on this server
RUN npm install -g pm2
RUN pm2 -v

# Set the working directory to /app in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory.
COPY package*.json ./

# Install dependencies using npm install.
RUN npm install

# Bundle app source
COPY . .

# Expose the port for the app to run
EXPOSE 3000

# Define the command to run your app
CMD ["pm2", "start", "ecosystem.config.js"]
