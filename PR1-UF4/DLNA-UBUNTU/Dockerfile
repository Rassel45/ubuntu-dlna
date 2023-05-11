FROM ubuntu:22.04

# Install DLNA server and VLC player
RUN apt-get update && \
    apt-get install -y dlna vlc

# Create a directory to store the video file
RUN mkdir /vids

# Copy the video file into the container
COPY video.mp4 /vids

# Set the working directory
WORKDIR /vids

# Expose the DLNA server port
EXPOSE 8200

# Start the DLNA server
CMD ["dlna", "-p", "8200", "-d", "/data"]
