FROM centos:7

RUN yum install -y sssd && yum clean all

COPY ./ldap/sssd.conf /etc/sssd/sssd.conf
RUN chmod 600 /etc/sssd/sssd.conf

COPY ./ldap/startup.sh /startup.sh
RUN chmod 744 /startup.sh

COPY ./ldap/bootstrap.ldif /tmp

CMD ["/startup.sh"]
