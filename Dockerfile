FROM ubuntu:16.04

MAINTAINER Marcelo Boeira <team-engineering@hey.car>

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libcurl4-openssl-dev libssl-dev curl \
    python-dev python-pycurl python-pip python-numpy python-opencv \
    webp libpng-dev libtiff-dev libjasper-dev libjpeg-dev \
    libdc1394-22-dev libdc1394-22 libdc1394-utils \
    gifsicle libgif-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install thumbor
RUN pip install --upgrade pip
RUN pip install setuptools
RUN pip install thumbor==6.4.0

# Mount the config folder
VOLUME /config/

EXPOSE 7000

CMD /usr/local/bin/thumbor --port=7000 -c /config/thumbor.config
