# Nexua dockerfile 
FROM sonatype/nexus3:3.7.1
LABEL comment="nexus3"
USER root 
WORKDIR /root
RUN apt-get update \
    && apt-get install tzdata \
    && echo "Asia/Shanghai" > /etc/timezone \
    && \cp -a /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
VOLUME ["/nexus-data"] 
EXPOSE 22 8081 

