FROM ubuntu:latest

WORKDIR /code
COPY requirements.txt .

RUN apt-get -y update && \
    apt-get install -y python3 python3-pip python-dev default-libmysqlclient-dev && \
    pip3 install -r requirements.txt
