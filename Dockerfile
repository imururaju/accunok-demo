FROM alpine:latest

# Update package index and install necessary packages
RUN apk update && apk add --no-cache bash fortune cowsay netcat-openbsd

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
