FROM alpine:3.12

ENV appname=flask-api-tutorial-master
COPY flask-api-tutorial-master/ /var/www/$appname

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

ENV PERSISTENT_DEPS \
    python3 \
    py3-pip \
    gcc \
    g++ \
    python3-dev\
    libffi-dev \
    zlib-dev

RUN apk add --no-cache --virtual .persistent-deps $PERSISTENT_DEPS

WORKDIR /var/www/$appname/
RUN pip install --upgrade pip &&\
    pip install -e .[dev] --ignore-installed distlib

WORKDIR /var/www/$appname
CMD ["/bin/sh"]
