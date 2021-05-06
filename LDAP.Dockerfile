FROM osixia/openldap

ENV LDAP_ORGANISATION="Bet 24/7"\
    LDAP_DOMAIN="bet.247.com"
COPY ./ldap/bootstrap.ldif /container/service/slapd/assets/bootstrap.ldif
COPY ./ldap/nsswitch.conf /etc/nsswitch.conf
COPY ./ldapUserDir /home