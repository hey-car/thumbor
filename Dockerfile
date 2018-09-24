FROM python:2-alpine3.6

MAINTAINER heycar Engineering <team-engineering@hey.car>

# Install alpine dependencies
RUN apk update && apk upgrade && \
    apk add --update --no-cache \
    build-base curl curl-dev zlib-dev jpeg-dev openssl-dev

# Install thumbor
RUN pip install --upgrade pip --no-cache-dir \
    setuptools \
    envtpl==0.5.3 \
    thumbor==6.5.2
RUN rm -rf /var/cache/apk/* &&  rm -rf /tmp/*

# Mount the config folder
VOLUME /config/

EXPOSE 7000

CMD /usr/local/bin/thumbor --port=7000 -c /config/thumbor.config
