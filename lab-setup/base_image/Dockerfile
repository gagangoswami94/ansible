# BASE image - used by MASTER and HOST images

# Ubuntu 17.10 image as a starting point
FROM ubuntu:17.10

# required packages
RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
        aptitude iputils-ping net-tools man vim openssh-server python \
    && rm -rf /var/lib/apt/lists/*

# ensure that required directories are created
RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh