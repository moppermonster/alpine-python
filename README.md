# alpine-python
Alpine based Python container

## About
Alpine based docker image with Python3 and pip.

## Dockerfile
```Dockerfile
# Install Python
RUN apk add --no-cache python3
# Ensure pip
RUN python3 -m ensurepip && rm -r /usr/lib/python*/ensurepip
# Upgrade pip
RUN pip3 install --upgrade pip setuptools
# Clean up
RUN rm -r /root/.cache
```

## Building
```bash
docker build -t alpine-python .
```

## Usage
Intended as base image.

For those who want to use the interactive Python3 shell run the following:
```
docker run -it alpine-python
```
