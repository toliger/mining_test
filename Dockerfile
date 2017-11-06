FROM ubuntu

LABEL maintainer="Oliger Timothee"

RUN apt update && apt upgrade && apt install -y apt-utils dialog software-properties-common

RUN add-apt-repository ppa:ethereum/ethereum

RUN apt update

RUN apt install -y ethminer

ENTRYPOINT while true; do sleep 1000; done
