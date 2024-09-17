# Use the base image with NGINX and RTMP module
FROM tiangolo/nginx-rtmp

# Set environment variables if needed
# ENV NGINX_PORT=1936

# Copy your custom nginx.conf file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the necessary ports
EXPOSE 1936
EXPOSE 1937
EXPOSE 8083
