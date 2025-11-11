FROM unsloth/unsloth:stable
USER root
COPY environment /etc/environment
RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get install -y ffmpeg libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavdevice-dev && \
    rm -rf /var/lib/apt/lists/*
USER unsloth
RUN pip install --upgrade pip
RUN pip install torchcodec