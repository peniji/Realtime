# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy application file
COPY hello.js .

# Expose port (only needed for HTTP server)
EXPOSE 3000

# Run the application
CMD ["node", "hello.js"]

