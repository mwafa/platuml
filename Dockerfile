FROM ubuntu:20.04

RUN apt update && apt install -y graphviz default-jre curl

RUN mkdir -p /opt/plantuml
WORKDIR /opt/plantuml
RUN curl -JLO http://sourceforge.net/projects/plantuml/files/plantuml.jar/download

COPY run.sh /usr/local/bin/plantuml
RUN chmod a+x /usr/local/bin/plantuml