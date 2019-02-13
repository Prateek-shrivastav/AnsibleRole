
#!/bin/bash

set -ex

ansible_version=$1

sudo yum install python-pip python-devel python -y

sudo pip install pip --upgrade

sudo pip install ansible==${ansible_version}
