# Jenkins dockerfile 
FROM jenkinsci/blueocean
LABEL comment="jenkins-ci"
USER root 
WORKDIR /root
RUN apk update \
    && apk add -U tzdata \
    && echo "Asia/Shanghai" > /etc/timezone \
    && \cp -a /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
VOLUME ["/var/jenkins_home"] 
EXPOSE 22 8080 50000

