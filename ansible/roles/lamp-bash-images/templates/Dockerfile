FROM centos:centos7
LABEL Author = "Aurelien H."
LABEL Description = "DOCKERFILE : Allows the creation of a Container with a Centreon distribution installed via packages"

#Update and install requirements
RUN yum update -y
RUN yum install -y wget nano centos-release-scl httpd git

#Install Centreon repo
RUN cd /usr/local/src
RUN wget http://yum.centreon.com/standard/3.4/el7/stable/noarch/RPMS/centreon-release-3.4-4.el7.centos.noarch.rpm
RUN yum install -y --nogpgcheck centreon-release-3.4-4.el7.centos.noarch.rpm

#Install Centreon
RUN yum install -y centreon-base-config-centreon-engine centreon centreon-pp-manager
RUN yum clean all
#RUN systemctl enable httpd.service
#RUN systemctl start httpd.service
EXPOSE  80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

