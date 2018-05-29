# Gitlab dockerfile 
FROM gitlab/gitlab-ce/10.5.1-ce.0
LABEL comment="gitlab-ce"
ENV GITLAB_VERION='10.5.1' \ 
    GITLABZH_URL='https://gitlab.com/xhang/gitlab.git'
USER root 
WORKDIR /root
RUN apt-get update -y \
    && apt-get install -y tzdata git \
    && echo "Asia/Shanghai" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata \
# 开始汉化
    && git clone $GITLABZH_URL \
    && git diff v$GITLAB_VERION v$GITLAB_VERION-zh > ../$GITLAB_VERION-zh.diff \ 
    && gitlab-ctl stop \ 
    && patch -d /opt/gitlab/embedded/service/gitlab-rails -p1 < $GITLAB_VERION-zh.diff \
    && gitlab-ctl start \
    && gitlab-ctl reconfigure
# 备份脚本
COPY /srv/scripts/backup_gitlab.sh ../
VOLUME ["/etc/gitlab", "/var/opt/gitlab", "/var/log/gitlab"] 
EXPOSE 22 80 443 

