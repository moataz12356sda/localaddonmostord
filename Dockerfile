FROM ghcr.io/home-assistant/amd64-base:latest

ENV LANG C.UTF-8

RUN apk add --no-cache python3 py3-pip

RUN pip3 install --break-system-packages paho-mqtt influxdb

COPY run.sh /
COPY main.py /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
