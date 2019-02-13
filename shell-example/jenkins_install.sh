#!/bin/bash

set -ex

jenkins_version=$1


if [[ -z ${jenkins_version} ]];then
 jenkins_version=2.9-1.1
fi	

# Default version of jenkins 2.9-1.1

sudo yum install -y java-1.7.0-openjdk-devel
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum --showduplicates list jenkins | expand
sudo yum install jenkins-${jenkins_version}
# jenkins start
sudo service jenkins start
sudo chkconfig jenkins on

# port 8443
sudo iptables -I INPUT 1 -p tcp --dport 8443 -j ACCEPT
