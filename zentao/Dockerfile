# Zentao dockerfile 
FROM ubuntu:16.04
LABEL comment="zentao"
ENV ZENTAO_FILE='ZenTaoPMS.9.8.2.zbox_64.tar.gz' \
    ZENTAO_URL='http://dl.cnezsoft.com/zentao/9.8.2/ZenTaoPMS.9.8.2.zbox_64.tar.gz'
USER root 
WORKDIR /root
RUN apt-get update \
    && apt-get install tzdata wget \
    && echo "Asia/Shanghai" > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata \
    && wget -c $ZENTAO_URL \
    && mkdir -p /opt/zbox \
    && tar -zxf $ZENTAO_FILE -C /opt/zbox
CMD ["/opt/zbox/zbox", "start"]
VOLUME ["/opt/zbox"] 
EXPOSE 22 80 443 3306 

