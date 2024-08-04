# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy static HTML file to the Nginx default root directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
