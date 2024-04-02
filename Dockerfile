FROM ubuntu:latest


WORKDIR /root

RUN apt update
RUN apt install --no-install-recommends -y \
    wget

RUN wget https://github.com/pvolok/mprocs/releases/download/v0.6.4/mprocs-0.6.4-linux64.tar.gz --no-check-certificate
RUN tar -xf mprocs* && \
    rm mprocs*.tar.gz && \
    mv mprocs /usr/local/bin