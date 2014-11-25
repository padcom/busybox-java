FROM progrium/busybox
MAINTAINER Matthias Hryniszak <padcom@gmail.com>

RUN opkg-install curl

RUN mkdir -p /usr/lib/jvm && \
    curl -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz -L -k | gzip -dc | tar -xf - -C /usr/lib/jvm && \
    ln -s /usr/lib/jvm/jdk1.8.0_25 /usr/lib/jvm/default-java && \
    ln -s /usr/lib/jvm/default-java/bin/java /usr/bin/java && \
    rm -rf /usr/lib/jvm/default-java/*src.zip \
           /usr/lib/jvm/default-java/*.txt \
           /usr/lib/jvm/default-java/*.html \
           /usr/lib/jvm/default-java/man \
           /usr/lib/jvm/default-java/include \
           /usr/lib/jvm/default-java/lib/missioncontrol \
           /usr/lib/jvm/default-java/lib/visualvm \
           /usr/lib/jvm/default-java/lib/*javafx* \
           /usr/lib/jvm/default-java/jre/lib/plugin.jar \
           /usr/lib/jvm/default-java/jre/lib/ext/jfxrt.jar \
           /usr/lib/jvm/default-java/jre/bin/javaws \
           /usr/lib/jvm/default-java/jre/lib/javaws.jar \
           /usr/lib/jvm/default-java/jre/lib/desktop \
           /usr/lib/jvm/default-java/jre/plugin \
           /usr/lib/jvm/default-java/jre/lib/deploy* \
           /usr/lib/jvm/default-java/jre/lib/*javafx* \
           /usr/lib/jvm/default-java/jre/lib/*jfx* \
           /usr/lib/jvm/default-java/jre/lib/amd64/libdecora_sse.so \
           /usr/lib/jvm/default-java/jre/lib/amd64/libprism_*.so \
           /usr/lib/jvm/default-java/jre/lib/amd64/libfxplugins.so \
           /usr/lib/jvm/default-java/jre/lib/amd64/libglass.so \
           /usr/lib/jvm/default-java/jre/lib/amd64/libgstreamer-lite.so \
           /usr/lib/jvm/default-java/jre/lib/amd64/libjavafx*.so \
           /usr/lib/jvm/default-java/jre/lib/amd64/libjfx*.so

ENV JAVA_HOME /usr/lib/jvm/default-java
