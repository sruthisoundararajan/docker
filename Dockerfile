FROM ubuntu:20.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install basic tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    build-essential \
    openjdk-11-jdk \
    maven \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Set JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# Set working directory
WORKDIR /workspace
