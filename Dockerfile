FROM library/ubuntu:16.04
RUN apt-get -qq update
#RUN apt-get -y upgrade
#COPY docker_resources/apache_install.sh /tmp/apache_install.sh
ENV DEBIAN_FRONTEND noninteractive
ENV TERM dumb
RUN apt-get install -y apache2 mysql-server
#RUN /tmp/apache_install.sh
#RUN apt-get install -y expect-dev
#RUN apt-get install -y debconf-utils
COPY docker_resources/secure_installation.sh /tmp/secure_installation.sh
RUN /tmp/*.sh
RUN apt-get -y install php libapache2-mod-php php-mcrypt php-mysql