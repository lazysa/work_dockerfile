# Gitlab build script
cd /srv/scripts/dockerfile/jenkins && docker build -t jenkins/jenkins_init-1.0 .

# Old run command 
#docker run --name jenkins --hostname jenkins --restart always \
#  -u root \
#  -dit \
#  -p 30022:22 \
#  -p 8080:8080 \
#  -p 50000:50000 \
#  -v /srv/jenkins/data:/var/jenkins_home \
#  jenkinsci/blueocean:1.4.1

