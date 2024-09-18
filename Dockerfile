# Use the base image with NGINX and RTMP module
FROM tiangolo/nginx-rtmp

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Copy your custom nginx.conf file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the startup script into the container
COPY start.sh /usr/local/bin/start.sh

# Copy the FLV file into the container
COPY flv/file.flv /usr/local/flv/file.flv

# Make the script executable
RUN chmod +x /usr/local/bin/start.sh

# Expose the necessary ports
EXPOSE 1936
EXPOSE 8080