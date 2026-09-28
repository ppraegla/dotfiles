FROM mcr.microsoft.com/devcontainers/base:ubuntu22.04

# apt packages
RUN --mount=type=bind,source=deps/apt-packages.txt,target=/tmp/apt-packages.txt \
    apt-get update \
    && grep --invert-match '^#' /tmp/apt-packages.txt | xargs apt-get install -y \
    && rm -rf /var/lib/apt/lists/*
    
# Switch to already configured vscode user when using rootful docker
# USER vscode
# WORKDIR /home/vscode

# Install miniconda
RUN --mount=type=bind,source=deps/setup_conda.sh,target=/tmp/setup_conda.sh \
    --mount=type=bind,source=deps/requirements.txt,target=/tmp/requirements.txt \
    bash /tmp/setup_conda.sh
        
