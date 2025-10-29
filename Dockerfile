# Use the base image for JavaScript projects
FROM whanos-js

# Update and install basic tools
RUN apt-get update && \
    apt-get install -y curl git && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install project dependencies
RUN npm install

# Expose the default Node.js port (change if needed)
EXPOSE 3000

# Start the application
ENTRYPOINT ["npm", "start"]
