FROM centos:latest
MAINTAINER ranjmukesh@gmail.com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/flexed.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip flexed.zip
RUN cp -rvf flexed/* .
RUN rm -rf flexed.zip flexed
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
