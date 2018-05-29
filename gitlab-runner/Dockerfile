# Gitlab-runner dockerfile 
FROM gitlab/gitlab-runner:latest
LABEL comment="gitlab-runner"
USER root 
WORKDIR /root
RUN apt-get update \
    && apt-get install tzdata \
    && echo "Asia/Shanghai" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata \
VOLUME ["/etc/gitlab-runner", "/var/run"] 
EXPOSE 22 80 443 
