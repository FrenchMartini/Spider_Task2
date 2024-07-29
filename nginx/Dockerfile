#official nginx base image 
FROM nginx:latest

# Remove the default configuration file
RUN rm /etc/nginx/conf.d/default.conf
#copying the conf file 
COPY nginx.conf /etc/nginx/nginx.conf


# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
