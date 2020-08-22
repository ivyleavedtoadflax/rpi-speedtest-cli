FROM arm32v7/python:3.7

RUN pip install git+https://github.com/sivel/speedtest-cli.git

ENTRYPOINT /usr/local/bin/speedtest-cli --json > /data/speedtest/log.json
