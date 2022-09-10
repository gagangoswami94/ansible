## Clone repository

Clone this git repository:

`git clone git@github.com:gagangoswami94/ansible.git`

## Image building and run containers

`docker-compose up -d --build`

Connect to **master node**:

`docker exec -it master01 bash`

Verify network connection between master and hosts:

`ping -c 5 host01`

Start SSH Agent

`ssh-agent bash`

Load private key into SSH Agent to allow connections without entering key passphrase:

`ssh-add master_key`

    Enter passphrase for master_key:

Enter **passphrase** : `gagan`

Passphrase can be changed in [lab-setup/master_setup/Dockerfile](./lab-setup/master_setup/Dockerfile)

## Checking Ansible playbooks execution

Run a [sample ansible playbook](lab-setup/master_setup/sample/ping.yaml) that checks connection between master and hosts:

`ansible-playbook -i inventory ping_all.yml`


Type: `yes` (three times)