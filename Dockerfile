# Use the official lightweight Nginx Alpine image
FROM nginx:alpine

# Copy your local static website files to the default Nginx public folder
COPY ./dist /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
