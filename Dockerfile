FROM fedora:21
MAINTAINER Stas Rudakou "stas@garage22.net"

RUN yum -y update; yum clean all;
RUN yum -y install nginx

VOLUME ["/etc/nginx/conf.d", "/etc/nginx/default.d", "/var/log/nginx", "/usr/share/nginx/html"]

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
