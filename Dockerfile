FROM java:7 
MAINTAINER Paul Barriscale

ENV XD_BUILD release 
ENV XD_VERSION 1.3.0.RELEASE 

RUN wget http://repo.spring.io/${XD_BUILD}/org/springframework/xd/spring-xd/${XD_VERSION}/spring-xd-${XD_VERSION}-dist.zip \
      -O /opt/spring-xd-${XD_VERSION}-dist.zip \
    && unzip /opt/spring-xd-${XD_VERSION}-dist.zip -d /opt/ \
    && rm /opt/spring-xd-${XD_VERSION}-dist.zip \
    && apt-get update && apt-get install -y rsync \
    && /opt/spring-xd-${XD_VERSION}/zookeeper/bin/install-zookeeper \
    && ln -s /opt/spring-xd-${XD_VERSION} /opt/spring-xd

WORKDIR /opt/spring-xd 
