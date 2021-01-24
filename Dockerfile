FROM ubuntu:latest

WORKDIR /code
COPY requirements.txt .

RUN apt-get -y update && \
    apt-get install -y python3 python3-pip && \
    pip3 install -r requirements.txt
