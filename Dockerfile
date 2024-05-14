FROM grycap/cowsay:latest

# Copy both cow files
COPY lilypad.cow /usr/share/cowsay/cows/lilypad.cow
COPY lilyfrog.cow /usr/share/cowsay/cows/lilyfrog.cow
COPY lilycorn.cow /usr/share/cowsay/cows/lilycorn.cow
COPY lilyduck.cow /usr/share/cowsay/cows/lilyduck.cow
COPY lilyrocket.cow /usr/share/cowsay/cows/lilyrocket.cow

# Remove the existing symbolic link if it exists
RUN rm -f /usr/share/cowsay/cows/default.cow

# Set the default to lilypad
RUN ln -s /usr/share/cowsay/cows/lilypad.cow /usr/share/cowsay/cows/default.cow

# Define default message and image
ENV DEFAULT_MESSAGE="Hello World"
ENV DEFAULT_IMAGE="lilypad"

# Set the entry point to dynamically link the cow file and run cowsay
# Note: Corrected environment variable and parameter handling
ENTRYPOINT ["/bin/sh", "-c", "ln -sf /usr/share/cowsay/cows/${IMAGE:-$DEFAULT_IMAGE}.cow /usr/share/cowsay/cows/default.cow && /usr/games/cowsay \"$MESSAGE\""]

# Set default environment variables
ENV MESSAGE="$DEFAULT_MESSAGE"
ENV IMAGE="$DEFAULT_IMAGE"