FROM alpine:latest

RUN apk --no-cache add git curl

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

LABEL maintainer="Kacper Szczepaniuk <kacper.szczepaniuk@pollub.edu.pl>"

WORKDIR /app

CMD ["/bin/sh"]
