# To create the master container

# Using ansible_base (defined in ../base/Dockerfile) as a starting point
FROM ansible_base:latest

# Ansible package
RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
    ansible

# copy content of ansible directory from local disk to file system inside Docker image
COPY sample /var/ansible/

# Working directory
WORKDIR /var/ansible

# Create key pair to allow master to talk to host nodes
# Default ssh key passphrase is 'gagan' (Don't use this in production)
RUN ssh-keygen -t rsa -N gagan -C "master key" -f master_key