FROM ubuntu:18.04

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN /entrypoint.sh