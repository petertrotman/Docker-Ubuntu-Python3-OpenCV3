FROM petertrotman/ubuntu-python3
MAINTAINER Peter Trotman <peter@petertrotman.com>

# Apt get best practices from https://docs.docker.com/engine/articles/dockerfile_best-practices/
RUN apt-get update \
    && apt-get install -y \
		git \
        wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
	
RUN git clone https://github.com/petertrotman/Install-OpenCV
RUN bash ./Install-OpenCV/Ubuntu/opencv_latest.sh