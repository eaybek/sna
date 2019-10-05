FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY $PWD/sna/ /root/packages/sna/
WORKDIR /root/packages/sna
RUN pip3 install /root/packages/sna

CMD ["python3","test/search.py"]
