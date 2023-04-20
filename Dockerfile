FROM centos:latest
MAINTAINER jit.dhekale@gmail.com
RUN yum install -y httpd \
  zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/energym.zip /var/www/html
WORKER /var/www/html
RUN unzip energym.zip
RUN cp -rvf energym/*
RUN rm -rf energym energym.zip
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80
