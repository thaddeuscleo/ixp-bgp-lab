FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04


RUN echo "deb [trusted=yes] https://netdevops.fury.site/apt/ /" | \
    sudo tee -a /etc/apt/sources.list.d/netdevops.list

RUN sudo apt update && sudo apt install containerlab
RUN usermod -aG clab_admins vscode
RUN sudo bash -c "containerlab completion bash > /etc/bash_completion.d/containerlab"
