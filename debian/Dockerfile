# Base image
FROM debian:trixie-slim

# Update and upgrade packages
RUN apt update && apt upgrade -y

# Install required packages
RUN apt install -y vim git curl wget bash-completion bash

# Download and install Hugo
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.126.1/hugo_0.126.1_linux-amd64.deb \
    && wget https://github.com/gohugoio/hugo/releases/download/v0.126.1/hugo_extended_0.126.1_linux-amd64.deb \
    && dpkg -i hugo_0.126.1_linux-amd64.deb hugo_extended_0.126.1_linux-amd64.deb \
    && rm -f hugo_0.126.1_linux-amd64.deb hugo_extended_0.126.1_linux-amd64.deb

# Copy docker-entrypoint.sh to make sure you have access into /home/hugo dir
COPY ./docker-entrypoint.sh /

# Create a new user without a home directory and without setting a password
RUN useradd -m -s /bin/bash hugo

# Expose port 1313
EXPOSE 1313

ENTRYPOINT ["/docker-entrypoint.sh"]
