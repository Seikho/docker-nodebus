FROM ubuntu:latest
MAINTAINER Carl Winkler

# install node 0.12.*, node-gyp and python
RUN apt-get install -y curl && \
	curl -SL https://deb.nodesource.com/setup_0.12 | bash - && \
	apt-get install -y nodejs python2.7-dev && \
	npm config python /usr/bin/python2.7 && \
	npm install -g node-gyp
	
# install kafka and zookeeper
RUN apt-get update && \
	apt-get install -y zookeeper supervisor dnsutils

# todo: more	

# CMD ["node","--harmony", "/designco/src/index.js"]
