#!/bin/bash

set -ex

ansible_version=$1

if [[ -z ${ansible_version} ]];then
 ansible_version=2.7.0
fi	

sudo yum install python-pip python-devel python -y

sudo pip install pip --upgrade

sudo pip install ansible==${ansible_version}
