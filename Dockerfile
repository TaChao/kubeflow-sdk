FROM python:3.6-alpine

WORKDIR /root

RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev openssl-dev
RUN pip install --no-cache-dir https://storage.googleapis.com/ml-pipeline/release/latest/kfp.tar.gz --upgrade
RUN apk del .build-deps gcc musl-dev libffi-dev openssl-dev
