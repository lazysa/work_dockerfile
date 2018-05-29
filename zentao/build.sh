# Zentao build script
cd /srv/scripts/dockerfile/zentao && docker build -t zentao/zentao_init-1.0 .

# Old run command 
#docker run -dit -p 20080:80 -p 20043:443 -p 13306:3306 --restart=always --name zentao --hostname zentao -v /srv/zentao/data/:/opt ubuntu:16.04

