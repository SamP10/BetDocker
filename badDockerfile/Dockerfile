FROM ubuntu:bionic-20180426

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update
RUN apt-get install -y policykit-1 \
    openssh-server
COPY ./sshd_config /etc/ssh/sshd_config
RUN service ssh start
