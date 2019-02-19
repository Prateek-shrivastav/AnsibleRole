FROM    centos:7

RUN yum update
RUN yum install httpd -y
RUN service httpd start
RUN /sbin/chkconfig --levels 235 httpd on
RUN yum install mysql-server
RUN sudo service mysqld start
RUN sudo /sbin/chkconfig --levels 235 mysqld on
RUN mysql_secure_installation
RUN sudo yum install php-mysql
RUN sudo mkdir /var/log/php
RUN sudo chown apache /var/log/php
RUN sudo service httpd restart
RUN sudo yum install mysql-server

# Expose ports.
EXPOSE 80
EXPOSE 443