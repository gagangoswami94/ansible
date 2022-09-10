#!/bin/bash

# Adding master public key to authorized_keys on host to allow SSH connections
cat /var/ans/master_key.pub >> /root/.ssh/authorized_keys

# Starting SSH server
/usr/sbin/sshd -D