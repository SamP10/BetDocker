FROM ubuntu:bionic-20180426

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update
RUN apt-get install -y policykit-1 \
    openssh-server

CMD["service ssh start"]