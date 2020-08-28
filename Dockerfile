FROM alpine

# Install Python
RUN apk add --no-cache python3
# Ensure pip
RUN python3 -m ensurepip && rm -r /usr/lib/python*/ensurepip
# Upgrade pip
RUN pip3 install --upgrade pip setuptools
# Clean up
RUN rm -r /root/.cache

CMD /usr/bin/python3
