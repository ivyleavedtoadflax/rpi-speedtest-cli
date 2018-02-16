FROM hypriot/rpi-python:2.7.3

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install -y ca-certificates \
	&& apt-get install python-pip -y \
	&& apt-get install git -y \
	&& pip install git+https://github.com/sivel/speedtest-cli.git

ENTRYPOINT ["/usr/local/bin/speedtest-cli"]
