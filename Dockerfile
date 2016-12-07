FROM node:alpine

MAINTAINER Owen Ouyang<owen.ouyang@live.com>

RUN npm install --global azure-cli && \
    azure --completion >> ~/azure.completion.sh && \
    echo 'source ~/azure.completion.sh' >> ~/.bashrc && \
    azure && \
    azure config mode arm
