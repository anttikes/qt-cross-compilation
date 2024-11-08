FROM mcr.microsoft.com/vscode/devcontainers/base:debian11

RUN dpkg --add-architecture arm64
RUN apt-get update && apt install --assume-yes \
    gdb cmake \
    qtdeclarative5-dev \
    qtdeclarative5-dev:arm64 \
    g++-aarch64-linux-gnu