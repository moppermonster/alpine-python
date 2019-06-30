# alpine-python
Alpine based Python container

## About
Alpine based docker image with Python3 and pip.

## Docker Hub
```
dutchsecniels/alpine-python
```

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

### Build
```bash
docker build -t alpine-python .
```

### Run
```
docker run -it alpine-python
```

## Usage
Intended as base image.
```Dockerfile
FROM dutchsecniels/alpine-python

COPY app.py /app.py

CMD /usr/bin/python3 /app.py
```

For those who want to use the interactive Python3 shell run the following:
```
docker run -it dutchsecniels/alpine-python
```

## Credits and thanks

[Inspiration](https://github.com/hellt/nginx-uwsgi-flask-alpine-docker/tree/master/python3)
