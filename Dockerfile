FROM node:20-bullseye-slim

RUN apt-get update && \
    apt-get install -y ffmpeg pandoc && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g n8n@2.32.4

ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

EXPOSE 5678

CMD ["n8n", "start"]
