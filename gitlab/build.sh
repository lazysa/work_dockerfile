# Gitlab build script
cd /srv/scripts/dockerfile/gitlab && docker build -t gitlab-ce_zh/10.5.1_init-1.0 .

# Old run command 
#docker run -dit -p 10022:22 -p 10080:80 -p 10043:443 --restart=always --name gitlab --hostname gitlab -v /srv/gitlab/config:/etc/gitlab -v /srv/gitlab/data:/var/opt/gitlab -v /srv/gitlab/logs:/var/log/gitlab gitlab/gitlab-ce:10.5.1-ce.0

