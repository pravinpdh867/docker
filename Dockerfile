FROM  ubuntu:18.04
MAINTAINER  pravinpdh867@gmail.com
RUN yum update -y
RUN yum install -y httpd  \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page268/garelick.zip /var/www/html
WORKDIR /var/www/html
RUN unzip garelick.zip
RUN cp -rvf garelick/* .
RUN rm -rvf garelick.zip
CMD ("usr/sbin/httpd", "-D", "FOREGROUND")
EXPOSE  80
