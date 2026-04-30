ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install Python3 and pip
RUN apk add --no-cache python3 py3-pip \
 && pip3 install paho-mqtt influxdb

# Copy files
COPY run.sh /
COPY main.py /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
