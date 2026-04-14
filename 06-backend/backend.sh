# #!/bin/bash
# component=$1
# environment=$2
# dnf install ansible -y
# pip3.9 install botocore boto3
# ansible-pull -i localhost, -U https://github.com/ushanayana/expense-ansible-roles.git main.yaml -e component=$component -e env=$environment

component=$1
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/ushanayana/expense-ansible-roles.git

cd expense-ansible-roles
git pull
ansible-playbook -e component=$component  main.yaml