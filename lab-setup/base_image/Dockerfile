# BASE image - used by MASTER and HOST images

# Ubuntu 17.10 image as a starting point
FROM ubuntu:18.04

# required packages
RUN apt autoremove && apt autoclean -y \
    && apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
    aptitude iputils-ping net-tools man vim openssh-server python 

# ensure that required directories are created
RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh