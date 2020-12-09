FROM alpine:3.10

RUN apk add --no-cache graphviz openjdk11-jre curl

RUN apk add --no-cache msttcorefonts-installer fontconfig
RUN update-ms-fonts
RUN fc-cache -f

RUN mkdir -p /opt/plantuml
WORKDIR /opt/plantuml
RUN curl -JLO http://sourceforge.net/projects/plantuml/files/plantuml.jar/download

COPY run.sh /usr/local/bin/plantuml
RUN chmod a+x /usr/local/bin/plantuml