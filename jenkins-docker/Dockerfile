#FROM jenkinsci/blueocean
FROM docker.io/jenkins/jenkins:latest

USER root
 
# Compose
 
RUN apt-get update && \
    apt-get upgrade -y # && \
    apt-get install -y curl
# && \
#    apt-get add python-dev libffi-dev openssl-dev gcc libc-dev make && \
#    pip install docker-compose
#RUN sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.9/0.10.9 > ~/.local/bin/mill && chmod +x ~/.local/bin/mill"
RUN sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.9/0.10.9 > /usr/share/mill && chmod +x /usr/share/mill"
RUN /usr/share/mill --version
