FROM ubuntu

LABEL maintainer="Oliger Timothee"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y apt-utils dialog software-properties-common

RUN add-apt-repository -y ppa:ethereum/ethereum && apt-get update && apt-get upgrade -y

RUN apt-get install -y ethminer

ENTRYPOINT while true; do sleep 1000; done

EXPOSE 80
