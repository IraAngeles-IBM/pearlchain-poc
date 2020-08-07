FROM adoptopenjdk/openjdk8-openj9:alpine-slim

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

RUN mkdir /root/.postgresql/

COPY https://github.com/Sherpa99/pearlchain-poc/blob/master/src/main/resources/root.crt /root/.postgresql/

COPY target/pearlchaindbm.jar /

ENTRYPOINT ["java","-jar", "pearlchaindbm.jar" ]