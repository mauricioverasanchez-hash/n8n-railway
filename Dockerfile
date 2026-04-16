FROM n8nio/n8n:latest

USER root

RUN ls /usr/bin/ && ls /bin/

USER node
