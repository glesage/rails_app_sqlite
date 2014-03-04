# Node.js & Rails 4 environment
#
# VERSION               0.1

FROM glesage/nodejs-rails4
MAINTAINER Geoffroy Lesage

# SqLite
RUN export DEBIAN_FRONTEND=noninteractive
RUN sudo apt-get install sqlite

RUN mkdir /home/app/

# Decouple webapp from container
VOLUME ["/webapp"]

EXPOSE 80

ADD start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]