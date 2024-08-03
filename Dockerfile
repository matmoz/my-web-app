# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the index.html file to the default Nginx HTML location
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
