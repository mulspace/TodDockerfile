FROM centos:7.5.1804

MAINTAINER Kevin Fu (mulspace@gmail.com)

RUN yum install -y xinetd 

RUN sed -i 's/\(disable.*= \)yes/\1no/g' /etc/xinetd.d/time-stream /etc/xinetd.d/time-dgram

EXPOSE 37
CMD ["/usr/sbin/xinetd -d"]
