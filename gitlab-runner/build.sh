# Gitlab-runner build script
cd /srv/scripts/dockerfile/gitlab-runner && docker build -t gitlab-runner/init-v1.0 .

# Old run command 
#docker run -d --name gitlab-runner --restart always \
#  -v /var/run/docker.sock:/var/run/docker.sock \
#  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
#  gitlab/gitlab-runner:latest

