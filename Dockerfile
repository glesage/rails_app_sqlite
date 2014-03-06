# Node.js & Rails 4 environment
#
# VERSION               0.1

FROM glesage/nodejs-rails4
MAINTAINER Geoffroy Lesage

# SqLite
RUN export DEBIAN_FRONTEND=noninteractive
RUN sudo apt-get -y install sqlite libsqlite3-dev

# Decouple webapp from container
VOLUME ["/webapp"]

$ Make sure we own the directory of the app
RUN chown -R www-data /webapp
RUN cd /webapp

ADD webapp/Gemfile Gemfile
ADD webapp/Gemfile.lock Gemfile.lock
RUN bundle install

# Everything up to here will be chached
ADD webapp /webapp

EXPOSE 80

ADD start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]