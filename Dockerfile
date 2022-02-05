FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.14
RUN \
    echo 'Install Dependencies' && \
    apk add --no-cache --upgrade \ 
    git && \
    echo 'Install My-Mind' && \
    mkdir -p /app && \
    cd /app && git clone https://github.com/ondras/my-mind.git && \
    echo 'Remove Dependencies' && \
    apk del git
COPY default.conf /config/nginx/site-confs/default
EXPOSE 80