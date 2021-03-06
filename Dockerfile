FROM adoptopenjdk/openjdk8-openj9:alpine-slim
#Installs curl
RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

#Postgress root directory to store the certs
RUN mkdir /root/.postgresql/

RUN cd /root/.postgresql/

RUN curl https://github.com/Sherpa99/pearlchain-poc/blob/master/src/main/resources/root.crt

#Working Directory
WORKDIR /app

RUN curl  https://github.com/Sherpa99/pearlchain-poc/blob/master/src/main/resources/pearlchaindbm.jar

ENTRYPOINT ["java","-jar", "pearlchaindbm.jar" ]
