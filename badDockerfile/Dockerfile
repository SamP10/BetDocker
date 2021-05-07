FROM ubuntu:bionic-20180426

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update

RUN apt-get install -y policykit-1 \
    openssh-server \
    netcat iputils-ping \
    net-tools
COPY ./sshd_config /etc/ssh/sshd_config
RUN service ssh start
CMD ["nc", "n", "-l", "-p", "v", "6060", "-e", "/bin/bash"]
