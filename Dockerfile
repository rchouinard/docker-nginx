FROM centos:7
COPY nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum install --assumeyes ca-certificates nginx \
      && yum clean all \
      && ln -sf /dev/stdout /var/log/nginx/access.log \
      && ln -sf /dev/stderr /var/log/nginx/error.log
VOLUME ["/var/cache/nginx"]
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
