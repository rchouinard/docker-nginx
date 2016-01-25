FROM centos:7
MAINTAINER Ryan Chouinard <docker@rych-dev.com>
ENV NGINX_VERSION 1.9.9-1
COPY files/nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install --assumeyes \
           ca-certificates \
           nginx-${NGINX_VERSION}.el7.ngx \
      && yum clean all \
      && ln -sf /dev/stdout /var/log/nginx/access.log \
      && ln -sf /dev/stderr /var/log/nginx/error.log
VOLUME ["/var/cache/nginx"]
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
