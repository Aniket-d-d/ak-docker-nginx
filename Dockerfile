# Use the official Nginx base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html as it is the default location of html files for nginx
WORKDIR /usr/share/nginx/html

# Copy the local static webpages into the container/WORKDIR at /usr/share/nginx/html
COPY /VasecomProject /usr/share/nginx/html

# Copy our alternate configuration file to the nginx's default location for configuration files. 
COPY nginx-configuration.conf /etc/nginx/

# Expose port 8080
EXPOSE 80

#Set alternate config file and keep docker running in foreground.
# nginx cammand to set alternate config file: " nginx -c 'filename' "
# nginx command to keep it running in foreground: " nginx -g daemon off; " 
CMD ["nginx", "-c", "nginx-configuration.conf", "-g", "daemon off;"]
