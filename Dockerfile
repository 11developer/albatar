FROM ubuntu:18.04

MAINTAINER Sebastien Macke <lanjelot@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get install -y python3-dev git python3-pip
RUN python3 -m pip install requests

WORKDIR /opt/albatar
ENTRYPOINT ["python3", "demo.py"]

# usage:
# docker build -t albatar .
# docker run -v $PWD:/opt/albatar --rm -it albatar -h
