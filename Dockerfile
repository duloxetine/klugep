FROM debian:latest

RUN apt-get update \
	&& apt-get install -y \
	build-essential \
	automake \
	libcurl4-openssl-dev \
	rlwrap \
	git \
	vim \
	xterm \
	sudo

RUN groupadd klugep \
	&& useradd -g klugep -G sudo -m -d /home/klugep -s /bin/bash klugep \
	&& echo "klugep:klugep" | chpasswd
