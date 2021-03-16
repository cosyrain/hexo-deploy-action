FROM node:12-buster-slim

LABEL version="1.0.0"
LABEL repo="https://github.com/cosyrain/hexo-deploy-action"
LABEL maintainer="cosyrain"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ;\
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
