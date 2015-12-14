FROM ubuntu:latest
MAINTAINER Peter Trotman <peter@petertrotman.com>

# Apt get best practices from https://docs.docker.com/engine/articles/dockerfile_best-practices/
RUN echo "deb http://archive.ubuntu.com/ubuntu/ trusty main universe" >> /etc/apt/sources.list
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        python \
        python-dev \
        python-pip \
        python3 \
        python3-dev \
        python3-pip \
		git \
        wget
	
RUN git clone https://github.com/petertrotman/Install-OpenCV
RUN bash ./Install-OpenCV/Ubuntu/opencv_latest.sh

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*