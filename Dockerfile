FROM debian:buster-slim

RUN apt-get update && apt-get install -y \
    bash \
    fortune \
    cowsay \
    netcat

# Copy the script into the container
COPY wisecow.sh /

# Give the script executable permission
RUN chmod +x /wisecow.sh

# Set the working directory to the root directory
WORKDIR /

# Expose the service port
EXPOSE 4499

# Start the script
CMD ["./wisecow.sh"]
