# Use an appropriate Node.js version
FROM node:18

# Set the working directory
WORKDIR /app

# Copy all project files to the container
COPY . .

# Install a simple static file server globally
RUN npm install -g serve

# Expose port 5000
EXPOSE 5000

# Start the server and serve files from the current directory
CMD ["serve", ".", "-l", "5000"]
