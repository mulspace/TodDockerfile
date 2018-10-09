FROM centos:7.5.1804

MAINTAINER Kevin Fu (mulspace@gmail.com)

RUN yum install -y xinetd 

RUN sed -i 's/\(disable.*= \)no/\1yes/g' /etc/xinetd.d/time-stream /etc/xinetd.d/time-dgram

EXPOSE 37
