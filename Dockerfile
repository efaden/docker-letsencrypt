FROM lsiobase/alpine.nginx
MAINTAINER efaden

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install packages
RUN \
 apk add --no-cache \
 	php5-cgi \
	php5-curl \
	php5-gd \
	php5-mcrypt \
	php5-memcached memcached \
	php5-mysqli \
	php5-mysqlnd \
	php5-pdo_mysql 
	php5-pgsql \
	php5-sqlite && \

# add local files
COPY root/ /

