FROM ubuntu:latest

# Install cowsay package
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat

# Copy the script to the container
COPY wisecow.sh /

# Set the working directory to root
WORKDIR /

# Expose the service port
EXPOSE 4499

# Start the script
CMD ["./wisecow.sh"]
