FROM progrium/busybox
MAINTAINER Matthias Hryniszak <padcom@gmail.com>

RUN opkg-install curl

RUN mkdir -p /usr/lib/jvm && \
    curl -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz -L -k | gzip -dc | tar -xf - -C /usr/lib/jvm && \
    ln -s /usr/lib/jvm/jdk1.8.0_25 /usr/lib/jvm/default-java && \
    ln -s /usr/lib/jvm/default-java/bin/java /usr/bin/java

ENV JAVA_HOME /usr/lib/jvm/default-java
