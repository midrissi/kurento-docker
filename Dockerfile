FROM ubuntu
MAINTAINER Mohamed IDRISSI <med.idrissi@outlook.com>
 
RUN echo '# Add the kurento sources' >> /etc/apt/sources.list
RUN echo 'deb http://ppa.launchpad.net/kurento/kurento/ubuntu trusty main' >> /etc/apt/sources.list
RUN echo 'deb-src http://ppa.launchpad.net/kurento/kurento/ubuntu trusty main' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --force-yes kurento-media-server

EXPOSE 8888