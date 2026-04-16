FROM n8nio/n8n:latest

USER root

RUN microdnf install -y ffmpeg || \
    apk add --no-cache ffmpeg pandoc || \
    apt-get update && apt-get install -y ffmpeg pandoc && rm -rf /var/lib/apt/lists/*

USER node
