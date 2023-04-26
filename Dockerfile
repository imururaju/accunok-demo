FROM debian:buster-slim

# Set environment variable for cowsay package path
ENV COWSAY_PATH=/usr/games/cowsay

RUN apt-get update && apt-get install -y \
    bash \
    fortune \
    cowsay \
    netcat

# Copy the script into the container
COPY wisecow.sh /usr/local/bin/

# Give the script executable permission
RUN chmod +x /usr/local/bin/wisecow.sh

# Set the working directory to the root directory
#WORKDIR /

# Expose the service port
EXPOSE 4499

# Start the script
CMD ["wisecow.sh"]
